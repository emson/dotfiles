#!/bin/bash

function is_file_exists() {
  local f="$1"
  [[ -f "$f" ]] && return 0 || return 1
}


function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo -ne "${ref#refs/heads/}"
}



function mysqlbak() {
  local bak_date=$(date +%y%m%d%H%M%S)
  local branch_name=$(parse_git_branch)
  local extension=$([[ $branch_name ]] && echo "-$branch_name-$bak_date.sql" || echo "-$bak_date.sql")
  local myfilename="ht-dev$extension"
  if [ $1 ]
  then
    echo "Creating a MySQL dump file: $1"
    echo "mysqldump -uroot -h localhost housetrip_development > $1"
    `mysqldump -uroot -h localhost housetrip_development > $1`
  else
    echo "Creating a MySQL dump file: ~/HouseTrip-Shared/$myfilename"
    echo "mysqldump -uroot -h localhost housetrip_development > ~/HouseTrip-Shared/$myfilename"
    `mysqldump -uroot -h localhost housetrip_development > ~/HouseTrip-Shared/$myfilename`
  fi
}

function mysqlimp(){
  if (is_file_exists "$1")
  then
    echo "Importing MySQL file from: $1"
    echo "mysql -uroot -h localhost housetrip_development < $1"
    `mysql -uroot -h localhost housetrip_development < $1`
  else
    echo "The file '$1' does not exist!"
  fi
}

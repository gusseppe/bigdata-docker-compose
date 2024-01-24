#!/bin/bash


compose_file="docker-compose.yml"
printf "\e[1mWelcome to BigData Platform...\e[0m\n\n"
printf "\e[1mRunning the components...\e[0m\n\n"

docker-compose  -f ${compose_file} up -d

BCyan='\033[1;36m'
NC='\033[0m' # No Color

printf "\n"
printf "[+] YARN: \t ${BCyan}            http://localhost:8088${NC}\n"
printf "[+] Hadoop Name Node: \t ${BCyan}http://localhost:9870${NC}\n"
printf "[+] Spark Master: \t ${BCyan}    http://localhost:8080${NC}\n"
printf "[+] Zeppelin: \t ${BCyan}        http://localhost:8890${NC}\n"

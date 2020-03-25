@echo off
cmd /c az login
pause
cmd /c az group create --location westus --name lakeside-rg
pause
cmd /c az appservice plan create -g lakeside-rg -n lakeside-service-plan --is-linux
pause
cmd /c az webapp create -g lakeside-rg -p lakeside-service-plan -n %1 --runtime "JAVA|8-jre8"
pause

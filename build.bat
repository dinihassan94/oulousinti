@echo off
REM nginx
set nginx=nginx-html-app
set TAG=latest

REM Construction de l'image Docker
docker build -t %nginx%:%latest% .

REM Vérifier si la construction a réussi
if %ERRORLEVEL% equ 0 (
    echo L'image %nginx%:%latest% a été construite avec succès.
) else (
    echo Échec de la construction de l'image %nginx%:%latest%.
    exit /b 1
)

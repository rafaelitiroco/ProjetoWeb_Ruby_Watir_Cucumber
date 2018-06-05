@echo off
chcp 65001
cucumber --format html --out="./Reports/ValidarResultadoPesquisa.html" --tag @ValidarResultadoPesquisa TEST_ENV=gmail

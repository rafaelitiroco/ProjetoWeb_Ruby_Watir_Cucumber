@echo off
chcp 65001
cucumber --format html --out="./Reports/RealizarPesquisa.html" --tag @RealizarPesquisa TEST_ENV=google

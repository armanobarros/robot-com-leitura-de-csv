*** Settings ***
Library     SeleniumLibrary
Library     RPA.Tables
Library     Collections
Resource    shared/setup_teardown.robot 
Resource    keywords.robot
Resource    pages/cadastrar.robot

*** Variables ***
${CSV_FILE}    C:\\Users\\arman\\Documents\\Alura\\Testes\\Python\\teste02\\estrutura_aluno\\resources\\massas.csv


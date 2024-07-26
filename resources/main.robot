*** Settings ***
Library     SeleniumLibrary
Library     RPA.Tables
Library     Collections
Resource    shared/setup_teardown.robot 
Resource    keywords.robot
Resource    pages/cadastrar.robot

*** Variables ***
${CSV_FILE}    path_absolute\\massas.csv


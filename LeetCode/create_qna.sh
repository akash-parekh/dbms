#!/bin/bash
folder_name=$1
mkdir -p "$folder_name"
touch "$folder_name/Question.md"
touch "$folder_name/Answer.sql"

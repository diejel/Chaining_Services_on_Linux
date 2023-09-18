#!/bin/bash

number_condition="$((RANDOM%5 +1))"
[[ $number_condition -eq 2 ]]&&(echo "Upload Backup: $number_condition (SUCCESS)" | \
 tee -a /home/diego.zuniga/output.txt ; exit 0 )||(echo "Upload Backup: $number_condition (FAILED)" | tee -a /home/diego.zuniga/output.txt ; exit 1)



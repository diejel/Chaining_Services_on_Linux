#!/bin/bash

exit_value=$env_exit_value
number_condition="$((RANDOM%5 +1))"
[[ $number_condition -eq 2 ]]&&(echo "Do Backup: $number_condition (SUCCESS)" | \
 tee -a /home/diego.zuniga/output.txt ; exit_value="SUCCESS"; echo "${exit_value}" > /tmp/exit_value ;  exit 0 )||(echo "Do Backup: $number_condition (FAILED)" | tee -a /home/diego.zuniga/output.txt ; exit_value="FAILED" ; echo "${exit_value}" > /tmp/exit_value ;  exit 1 )

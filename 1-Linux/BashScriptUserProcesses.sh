#!/bin/bash

echo "Sort processes by memory or cpu consumption? (memory/cpu): "
read sort_by
echo "Enter number of head to print"
read HEAD
if [ "$sort_by" == "memory" ]; then
  ps aux --sort=-%mem | awk 'NR<=11{print $0}'
elif [ "$sort_by" == "cpu" ] then 
  ps aux --sort=-%cpu | awk 'NR<=$HEAD{print $0}'
else
  echo "Invalid input. Please enter either 'memory' or 'cpu'"
fi
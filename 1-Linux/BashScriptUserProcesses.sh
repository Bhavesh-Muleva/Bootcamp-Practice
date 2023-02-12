#!/bin/bash

echo "Sort processes by memory or cpu consumption? (memory/cpu): "
read sort_by

if [ "$sort_by" == "memory" ]; then
  ps aux --sort=-%mem | awk 'NR<=11{print $0}'
elif [ "$sort_by" == "cpu" ] then 
  ps aux --sort=-%cpu | awk 'NR<=11{print $0}'
else
 echo "Invalid input. Please enter either 'memory' or 'cpu'"
fi
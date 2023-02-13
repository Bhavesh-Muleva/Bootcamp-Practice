bash
Copy code
#!/bin/bash

echo "How many processes do you want to see for each user?"
read num_processes

# Get a list of all the users and the number of processes each user is running
process_list=$(ps -eo user= | sort | uniq -c)

# Sort the list by the number of processes and print the desired number of lines
echo "$process_list" | sort -nr | head -n $num_processes
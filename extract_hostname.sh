
#!/usr/bin/bash

# Replace "file.txt" with the actual filename
filename="ipaddr.txt"

# Read each line from the file
while IFS= read -r line; do
  # Extract the hostname from each line
  hostname=$(echo "$line" | awk '{print $4}')

  # Output the extracted hostname
  echo "$hostname"
done < "$filename"





#!/bin/bash

# Replace "file.txt" with the actual filename
filename="ipaddr.txt"

# Read each line from the file
while IFS= read -r line; do
  # Extract the IP address from each line
  ip_address=$(echo "$line" | grep -Eo '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+')

  # Output the extracted IP address
  echo "$ip_address"
done < "$filename"


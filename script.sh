#!/bin/bash

# Create 10 files with txt extension and the word "welcome" in each file
for i in {1..10}; do
  echo "welcome" > file$i.txt
done

# Get variables from user
read -p "Enter value for var1: " var1
read -p "Enter value for var2: " var2

# Compare variables
if [ "$var1" == "$var2" ]; then
  # Create tar file and push to "master" branch
  tar -cvf files.tar *.txt
  git add .
  git commit -m "adding files"
  git push -u origin master
else
  # Push individual files to "develop" branch
  git add .
  git commit -m "adding files"
  git push -u origin develop
fi


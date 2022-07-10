#! /bin/bash

# Remove show only lower case characters in a file 
cat mess | grep [a-z] | sed 's/[^a-z]//g'

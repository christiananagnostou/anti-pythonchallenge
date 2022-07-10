#! /bin/bash

cat mess | sed -n 's/.*\([a-z][A-Z]\{3\}\([a-z]\)[A-Z]\{3\}[a-z]\).*/\2/ p'

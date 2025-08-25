#!/bin/bash

max_count=0
max_file=""

for file in *.fasta; do
	head_count=$(grep -c "^>" "$file")
	if((head_count > max_count)); then
		max_count=$head_count
		max_file=$file
	fi
done

echo "$max_file has the highest sequnces which is $max_count"

#!/bin/bash

for file in *.fasta; do
	seq_count=$( grep -c "^>" "$file")
	if [ "$seq_count" -gt 3 ]; then
		size=$(stat -c %s "$file")
		echo "$file : $seq_count sequences, $size size"
	fi
done

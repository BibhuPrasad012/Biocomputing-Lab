#!/bin/bash

for file in *.fasta; do
    echo "Processing: $file"
    echo "Sequences: $(grep -c ">" "$file")"
    echo "File size (characters): $(wc -c < "$file")"
done

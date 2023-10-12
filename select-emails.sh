#!/usr/bin/env bash
#specifying input file
students_file="students-list_0923.txt"
#creating the file student-emails.txt
output_file="student-emails.txt"
# Extract emails from students file and save them to student-emails.txt
if [ -e "$students_file" ] && [ -s "$students_file" ]; then
cut -d ',' -f 1 "$students_file" > "$output_file"
else
    echo "Error: Input file does not exist or is empty."
fi
echo "Emails extracted and saved to $output_file."

#!/usr/bin/env bash
students_file="students-list_0923.txt"
#creating the file student-emails.txt
output_file="student-emails.txt"
# Extract emails from students file and save them to student-emails.txt
cut -d ',' -f 1 "$students_file" > "$output_file"
echo "Emails extracted and saved to $output_file."

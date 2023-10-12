#!/usr/bin/env bash

students_file="students-list_0923.txt"

while true; do
    echo "Welcome to the ALU Student Registration System"
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student record"
    echo "4. Update student record"
    echo "5. Exit"
    read -p "Please enter your choice (1/2/3/4/5): " choice
case $choice in
        1)
            read -p "Enter student email: " email
            read -p "Enter student age: " age
            read -p "Enter student ID: " student_id
            echo "$email, $age, $student_id" >> "$students_file"
            echo "Student record created and saved."
            ;;
	  2)
            if [ -s "$students_file" ]; then
                cat "$students_file"
            else
                echo "No students found."
            fi
            ;;
esac
done

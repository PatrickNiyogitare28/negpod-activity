#!/usr/bin/env bash
directory="negpod_7-q1"

if [ ! -d "$directory" ]; then
	mkdir "$directory"
fi

mv main.sh students-list_0923.txt select-emails.sh student-emails.txt "$directory"

#!/bin/bash

count_files() {
    find . -maxdepth 1 -type f | wc -l
}

correct_answer=$(count_files)

echo "Welcome to the gessing gamee"
echo "How mannyy files are in the current directory?"

while true
do
    read -p "Enter your guess: " guess

    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid number."
    elif [ "$guess" -lt "$correct_answer" ]
    then
        echo "Your guess is too low. Try again!"
    elif [ "$guess" -gt "$correct_answer" ]
    then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed correctly!"
        break
    fi
done

echo "Thank you smm for playing!"

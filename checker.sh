#!/bin/bash


hash_flag() {
    echo -n "$1" | sha256sum | awk '{print $1}'
}


submitted_flag=$(cat flag.txt)


submitted_hash=$(hash_flag "$submitted_flag")


if [ "$submitted_hash" == "$CORRECT_HASH" ]; then
    echo "Correct flag!"
    exit 0
else
    echo "Incorrect flag."
    exit 1
fi
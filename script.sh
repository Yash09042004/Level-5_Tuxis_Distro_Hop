#!/bin/bash


hash_flag() {
    echo -n "$1" | sha256sum | awk '{print $1}'
}

CORRECT_HASH="158dec74edd435d9f5c342f6193b8bbb580bcb735e230235d67e2f1ffe553c40"

submitted_flag=$(cat flag.txt)


submitted_hash=$(hash_flag "$submitted_flag")


if [ "$submitted_hash" == "$CORRECT_HASH" ]; then
    echo "Correct flag!"
    exit 0
else
    echo "Incorrect flag."
    exit 1
fi

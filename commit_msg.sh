#!/usr/bin/bash

commit_msg_filepath="$1"

echo "Commit message file path: $commit_msg_filepath"

commit_msg=$(cat "$commit_msg_filepath")

if ! [[ "$commit_msg" =~ ^\[.*\]: ]]; then
    echo "Please validate commit messages"
    exit 1
fi


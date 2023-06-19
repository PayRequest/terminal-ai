#!/bin/bash

# Define the function
AI_FUNCTION='function ai () {
    if [[ "${1:0:1}" == "-" || "${1:0:1}" == "—" ]]; then
        sgpt $1 "${*:2}"
    else
        sgpt "$*"
    fi
}'

# Check if the function already exists in .bashrc
if ! grep -q "function ai" ~/.bashrc; then
    # Append the function to .bashrc
    echo "$AI_FUNCTION" >> ~/.bashrc
    echo "Added the 'ai' function to .bashrc"
else
    echo "The 'ai' function already exists in .bashrc"
fi

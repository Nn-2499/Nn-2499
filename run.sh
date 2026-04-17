#!/bin/bash
# Script to run the application in a browser
# Opens index.html in the default browser

echo "Starting Masaangna..."

# Detect the OS and open the file in the default browser
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    open index.html
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    xdg-open index.html
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]]; then
    # Windows
    start index.html
else
    # Fallback
    echo "Please open index.html manually in your browser"
fi

echo "Application launched!"
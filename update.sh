#!/bin/bash

# Set the URL of the latest x.cpp file
URL="https://raw.githubusercontent.com/KaliforniaGator/XTool/refs/heads/main/x.cpp"

# Function to check and install g++
install_gpp() {
    if ! command -v g++ &> /dev/null; then
        echo "g++ is not installed. Installing it now..."
        if [[ "$OSTYPE" == "linux-gnu"* ]]; then
            sudo apt update && sudo apt install -y g++
        elif [[ "$OSTYPE" == "darwin"* ]]; then
            echo "Installing g++ via Homebrew..."
            brew install gcc
        else
            echo "Unsupported OS. Please install g++ manually."
            exit 1
        fi
    else
        echo "g++ is already installed."
    fi
}

# Ensure g++ is installed
install_gpp

# Download the latest x.cpp
echo "Downloading latest x.cpp..."
curl -o x.cpp "$URL"

# Check if the download was successful
if [ $? -ne 0 ]; then
    echo "Failed to download x.cpp. Please check the URL or your internet connection."
    exit 1
fi

# Compile the file
echo "Compiling x.cpp..."
g++ -o x x.cpp

# Check if compilation was successful
if [ $? -ne 0 ]; then
    echo "Compilation failed. Please check for errors in x.cpp."
    exit 1
fi

# Move the compiled binary to /bin with proper permissions
echo "Moving binary to /bin (requires sudo)..."
sudo mv x /bin/

# Confirm success
if [ $? -eq 0 ]; then
    echo "Update successful! You can now run 'x' from anywhere."
else
    echo "Failed to move binary to /bin. Please check permissions."
fi

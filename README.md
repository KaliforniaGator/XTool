# X: A Convenient Alternative to the Clear Command

X is a lightweight, command-line utility that quickly clears the terminal screen with a simple and convenient syntax.

## Features
* Clears the screen with a simple command
* Designed to be a drop-in replacement for the clear command
* Easy to install and use

## Installation
To install X, simply run the following command:
```bash
curl -s https://raw.githubusercontent.com/KaliforniaGator/XTool/main/update.sh | bash
```
This script will:
1. Check if `g++` is installed and install it if necessary.
2. Download the latest version of `x.cpp`.
3. Compile `x.cpp` into the `x` binary.
4. Move the binary to `/bin/` so it can be accessed from anywhere.

### Manual Installation
If you prefer to install X manually, follow the instructions for your operating system:

#### Linux & Mac
```bash
g++ -o x x.cpp
sudo mv x /bin/x
```
Make sure `/bin` or `/usr/local/bin` is included in your system's PATH.

#### Windows
To install X on Windows, compile the `x.cpp` file using MinGW and move `x.exe` to a directory in your PATH, such as `C:\Windows\System32`:
```bash
g++ -o x.exe x.cpp
move x.exe C:\Windows\System32\x.exe
```
Alternatively, add the folder containing `x.exe` to your system's PATH.

## Usage
To use X, simply type `x` in your terminal. This will clear the screen, just like the `clear` command.

## Why X?
X was created to provide a more convenient alternative to the `clear` command. With a shorter syntax, X makes it easier to clear the screen without having to type out the full `clear` command.

## Contributing
If you'd like to contribute to X, please fork this repository and submit a pull request. We welcome any contributions, whether it's a bug fix, a new feature, or simply a suggestion for improvement.

## License
X is licensed under the MIT License. See LICENSE for details.

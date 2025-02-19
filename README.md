# X: A Convenient Alternative to the Clear Command
==============================================

X is a lightweight, command-line utility that quickly clears the terminal screen with a simple and convenient syntax.

## Features
* Clears the screen with a simple command
* Designed to be a drop-in replacement for the clear command
* Easy to install and use

## Installation
To install X, follow the instructions for your operating system:

### Linux
You can install X to your bin folder using the following command:
```bash
sudo cp x /usr/bin/x && sudo chmod +x /usr/bin/x
```
Alternatively, you can use the following command to install it to your local bin folder:
```bash
cp x ~/.local/bin/x && chmod +x ~/.local/bin/x
```
Make sure to add `~/.local/bin` to your system's PATH if it's not already included.

### Windows
To install X on Windows, you can copy the `x.exe` file to a folder that is included in your system's PATH, such as `C:\Windows\System32`. You can do this using the following command in the Command Prompt:
```bash
copy x.exe C:\Windows\System32\x.exe
```
Alternatively, you can add the folder where `x.exe` is located to your system's PATH.

### Mac
You can install X to your bin folder using the following command:
```bash
sudo cp x /usr/local/bin/x && sudo chmod +x /usr/local/bin/x
```
Make sure that `/usr/local/bin` is included in your system's PATH.

## Usage
To use X, simply type `x` in your terminal. This will clear the screen, just like the clear command.

## Why X?
X was created to provide a more convenient alternative to the clear command. With a shorter syntax, X makes it easier to clear the screen without having to type out the full clear command.

## Contributing
If you'd like to contribute to X, please fork this repository and submit a pull request. We welcome any contributions, whether it's a bug fix, a new feature, or simply a suggestion for improvement.

## License
X is licensed under the MIT License. See LICENSE for details.

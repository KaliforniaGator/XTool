#include <iostream>

void clearScreen() {
    // Clears the screen and also the scrollback buffer
    std::cout << "\033[2J\033[3J\033[H" << std::flush;
}

int main() {
    clearScreen();
    return 0;
}

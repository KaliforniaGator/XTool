#include <iostream>

// Define the clear screen function for different operating systems
void clearScreen() {
    #ifdef _WIN32
        std::cout << "\033[2J\033[1;1H";
    #else
        std::cout << "\033[2J\033[1;1H";
    #endif
}

int main() {
    clearScreen();
    return 0;
}

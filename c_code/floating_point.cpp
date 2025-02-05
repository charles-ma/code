#include <iostream>

int main() {
    int a = 10;
    int b = 0;
    int c = a / b; // Undefined behavior: division by zero
    std::cout << "Result: " << c << std::endl;
    return 0;
}

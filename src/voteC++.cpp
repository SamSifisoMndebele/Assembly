#include <iostream>
#include <string>

int main() {
    const std::string str1 = " Enter your name! ";
    const std::string str2 = " Enter your age! ";
    const std::string str3 = " you are Eligible to vote.";
    const std::string str4 = " you are Not Eligible to vote.";
    std::string userName;
    const int minAge = 18;

    std::cout << str1;              // Print str1
    std::cin >> userName;           // Read the user name

    std::cout << str2;              // Print str2
    int age;
    std::cin >> age;                // Read the user age

    std::cout << userName;

    // check if age < minAge
    if (age < minAge) {
        std::cout << str4;          // Print is Not Eligible
    } else {
        std::cout << str3;          // Print is Eligible
    }

    return 0;
}

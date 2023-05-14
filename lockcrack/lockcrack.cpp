#include <iostream>
#include <vector>
#include <cmath>

int lockcrack() {
    std::vector<int> second;
    std::vector<int> third;

    int firstLockedPosition = 4;
    int secondLockedPosition = 7;
    int resistantLocation = 23;
    int looseThird = 4;

    // Calculates the first number
    int first = static_cast<int>(std::ceil(resistantLocation) + 5) % 40;
    int mod = first % 4;

    // Calculates the third numbers
    for (int i = 0; i < 4; i++) {
        if (((10 * i) + firstLockedPosition) % 4 == mod) {
            third.push_back((10 * i) + firstLockedPosition);
        }

        if (((10 * i) + secondLockedPosition) % 4 == mod) {
            third.push_back((10 * i) + secondLockedPosition);
        }
    }

    // Calculates the second numbers
    int x;
    if (looseThird == third[0]) {
        x = 1;
    } else {
        x = 2;
    }

    for (int i = 0; i < 10; i++) {
        int tmp = ((mod + 2) % 4) + (4 * i);
        if (x == 0 || ((third[x - 1] + 2) % 40 != tmp && (third[x - 1] - 2) % 40 != tmp)) {
            second.push_back(tmp);
        }
    }

    std::cout << "First: " << first << std::endl;
    std::cout << "Second: ";
    for (int num : second) {
        std::cout << num << " ";
    }
    std::cout << std::endl;
    std::cout << "Third: ";
    for (int num : third) {
        std::cout << num << " ";
    }
    std::cout << std::endl;

    return 0;
}

int main()
{
    lockcrack();
    return 0;
}

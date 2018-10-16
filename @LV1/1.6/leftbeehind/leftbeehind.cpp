#include <cstdio>

int main() {
    int a, b;

    while (true) {
        scanf("%d %d", &a, &b);
        if (a == 0 && b == 0) {
            break;
        }

        if (a + b == 13) {
            puts("Never speak again.");
        } else if (a == b) {
            puts("Undecided.");
        } else if (a > b) {
            puts("To the convention.");
        } else {
            puts("Left beehind.");
        }
    }
}

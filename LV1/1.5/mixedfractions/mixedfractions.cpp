#include <cstdio>

int main() {
    int a, b;

    while (true) {
        scanf("%d %d", &a, &b);
        if (a == 0 && b == 0) {
            break;
        }
        printf("%d %d / %d\n", a / b, a % b, b);
    }
}
#include <cstdio>

int main() {
    int x, y, n;
    scanf("%d %d %d", &x, &y, &n);

    for (int i = 1; i <= n; i++) {
        int mx = i % x == 0;
        int my = i % y == 0;

        if (mx && my) {
            puts("FizzBuzz");
        } else if (mx) {
            puts("Fizz");
        } else if (my) {
            puts("Buzz");
        } else {
            printf("%d\n", i);
        }
    }
}
#include <cstdio>

int gcd(int a, int b) {
    if (b == 0) {
        return a;
    }
    return gcd(b, a % b);
}

int main() {
    int a, b, tl;
    scanf("%d %d %d", &a, &b, &tl);

    int lcm = a * b / gcd(a, b);

    if (tl / lcm >= 1) {
        puts("yes");
    } else {
        puts("no");
    }
}
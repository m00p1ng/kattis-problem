#include <cstdio>

int main() {
    int n, d;
    scanf("%d", &n);
    d = (1 << n) + 1;
    printf("%d\n", d*d);
}
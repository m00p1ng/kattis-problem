#include <cstdio>

int main() {
    int n, ans = 0;
    scanf("%d", &n);

    while (n > 0) {
        ans = (ans << 1) + (n & 1);
        n >>= 1;
    }
    printf("%d\n", ans);
}
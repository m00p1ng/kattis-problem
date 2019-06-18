#include <cstdio>

int main() {
    int x, n, tmp, total = 0;
    scanf("%d %d", &x, &n);

    for(int i = 0; i < n; i++) {
        scanf("%d", &tmp);
        total += tmp;
    }

    printf("%d", n*x + x - total);
}
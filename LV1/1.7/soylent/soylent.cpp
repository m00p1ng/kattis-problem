#include <cstdio>

int main() {
    int n, m;
    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%d", &m);
        printf("%d\n", m / 400 + (m % 400 != 0));
    }
}
#include <cstdio>

int main() {
    int n, m;
    scanf("%d %d", &n, &m);

    if (m > n) {
        int temp = m;
        m = n;
        n = temp;
    }

    for (int i = m + 1; i <= n + 1; i++) {
        printf("%d\n", i);
    }
}

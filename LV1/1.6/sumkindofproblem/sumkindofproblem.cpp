#include <cstdio>

int main() {
    int n, k, r;
    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%d %d", &k, &r);
        int sum_r = r * (r + 1) / 2;
        printf("%d %d %d %d\n", k, sum_r, 2 * sum_r - r, 2 * sum_r);
    }
}

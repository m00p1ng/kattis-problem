#include <cstdio>

int main() {
    int n, m, tmp;
    scanf("%d", &n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &m);

        int max = 0, min = 1000;
        for (int j = 0; j < m; j++) {
            scanf("%d", &tmp);
            if (tmp > max) {
                max = tmp;
            }
            if (tmp < min) {
                min = tmp;
            }
        }
        printf("%d\n", 2 * (max - min));
    }
}
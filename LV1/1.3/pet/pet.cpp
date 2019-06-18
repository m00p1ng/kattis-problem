#include <cstdio>

int main() {
    int max_val = 0, idx = 0;

    for (int i = 1; i <= 5; i++) {
        int sum = 0, tmp;
        for (int j = 0; j < 4; j++) {
            scanf("%d", &tmp);
            sum += tmp;
        }
        if (sum > max_val) {
            max_val = sum;
            idx = i;
        }
    }
    printf("%d %d\n", idx, max_val);
}
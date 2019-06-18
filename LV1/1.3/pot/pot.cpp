#include <cmath>
#include <cstdio>

int main() {
    int n, tmp, sum = 0;
    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%d", &tmp);
        sum += pow(tmp / 10, tmp % 10);
    }
    printf("%d\n", sum);
}
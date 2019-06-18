#include <cstdio>

int main() {
    int n;
    double sum, l, temp;

    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%lf", &temp);
        if (temp >= 0) {
            sum += temp;
            l++;
        }
    }
    printf("%lf\n", sum / l);
}

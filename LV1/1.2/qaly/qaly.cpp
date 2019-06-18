#include <cstdio>

int main() {
    int n;
    double a, b, ans = 0;
    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%lf %lf", &a, &b);
        ans += a * b;
    }
    printf("%lf\n", ans);
}

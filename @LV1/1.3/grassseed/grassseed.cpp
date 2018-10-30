#include <cstdio>

int main() {
    double c;
    int n;

    scanf("%lf", &c);
    scanf("%d", &n);

    double ans = 0;

    for (int i = 0; i < n; i++) {
        double w, h;
        scanf("%lf %lf", &w, &h);
        ans += w * h;
    }
    printf("%.6lf\n", ans * c);
}

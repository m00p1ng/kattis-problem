#include <cstdio>

int main() {
    int n;
    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        double b, p;
        scanf("%lf %lf", &b, &p);

        double bpm = 60 * b / p;
        double abpm = 60 / p;
        printf("%.6lf %.6lf %.6lf\n", bpm - abpm, bpm, bpm + abpm);
    }
}
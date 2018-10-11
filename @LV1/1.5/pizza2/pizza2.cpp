#include <cstdio>

int main() {
    double r, c, d;
    scanf("%lf %lf", &r, &c);
    d = 1 - c / r;
    printf("%lf\n", d * d * 100);
}

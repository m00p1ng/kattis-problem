#include <cmath>
#include <cstdio>

int main() {
    double n;
    scanf("%lf", &n);
    printf("%.0lf\n", round(n * 5280.0 * 1000.0 / 4854.0));
}
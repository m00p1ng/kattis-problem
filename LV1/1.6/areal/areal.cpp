#include <cmath>
#include <cstdio>

int main() {
    double area, l;
    scanf("%lf", &area);

    l = 4 * sqrt(area);
    printf("%.7lf\n", l);
}
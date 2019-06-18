#include <cstdio>
#include <cmath>
#define PI acos(-1)

int main() {
    double h, v, ans;
    scanf("%lf %lf", &h, &v);

    ans = h/sin(v/180.0*PI);
    printf("%.0lf\n", ceil(ans));
}
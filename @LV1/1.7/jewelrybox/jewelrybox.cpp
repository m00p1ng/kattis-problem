#include <cmath>
#include <cstdio>

double find_height(double a, double b) {
    int ab = a + b;
    return (ab - sqrt(ab * ab - 3 * a * b)) / 6.0;
}

double max_volumn(double a, double b) {
    double m_h = find_height(a, b);
    return m_h * (a - 2 * m_h) * (b - 2 * m_h);
}

int main() {
    int n;
    double a, b;
    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%lf %lf", &a, &b);
        printf("%lf\n", max_volumn(a, b));
    }
}

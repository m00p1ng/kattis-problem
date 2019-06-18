#include <cstdio>

bool solvable(double a, double b, double c) {
    if (a + b == c || a * b == c) return true;
    if (a - b == c || b - a == c) return true;
    if (a / b == c || b / a == c) return true;
    return false;
}

int main() {
    int n;
    double a, b, c;
    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%lf %lf %lf", &a, &b, &c);
        if (solvable(a, b, c)) {
            puts("Possible");
        } else {
            puts("Impossible");
        }
    }
}
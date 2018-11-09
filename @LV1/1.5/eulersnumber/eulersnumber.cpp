#include <cstdio>

double eval_euler(int n) {
    if (n == 0) {
        return 1;
    }
    if (n == 1) {
        return 2;
    }
    double fac = 1;
    double euler = 2;

    for (int i = 2; i <= n; i++) {
        fac /= i;
        euler += fac;
    }

    return euler;
}

int main() {
    int n;
    scanf("%d", &n);
    printf("%.20lf\n", eval_euler(n));
}

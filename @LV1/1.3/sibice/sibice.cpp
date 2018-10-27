#include <cmath>
#include <cstdio>

int main() {
    int n;
    double w, h, d;
    scanf("%d %lf %lf", &n, &w, &h);

    d = sqrt(w * w + h * h);

    for (int i = 0; i < n; i++) {
        double k;
        scanf("%lf", &k);

        if (k <= d) {
            puts("DA");
        } else {
            puts("NE");
        }
    }
}

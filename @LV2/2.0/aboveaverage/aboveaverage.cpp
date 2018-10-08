#include <cstdio>

int avg(int n, double *score) {
    double sum = 0;
    for (int i = 0; i < n; i++) {
        sum += score[i];
    }
    return sum / n;
}

int main() {
    int n, m;
    double score[1000];
    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%d", &m);
        for (int j = 0; j < m; j++) {
            scanf("%lf", &score[j]);
        }
        double mean = avg(m, score);
        double remain = 0;

        for (int j = 0; j < m; j++) {
            if (score[j] > mean) {
                remain++;
            }
        }
        printf("%.3lf%%\n", 100.0 * remain / m);
    }
}

#include <cstdio>
int abs(int n) { return n > 0 ? n : -n; }

int main() {
    int a, b;
    scanf("%d %d", &a, &b);

    int diff = a - b;
    char p[10] = "piece";

    if (abs(diff) != 1) {
        p[5] = 's';
    }

    if (diff > 0) {
        printf("Dr. Chaz needs %d more %s of chicken!\n", diff, p);
    } else {
        printf("Dr. Chaz will have %d %s of chicken left over!\n", -diff, p);
    }
}
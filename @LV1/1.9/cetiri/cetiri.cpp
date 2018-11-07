#include <algorithm>
#include <cstdio>

int main() {
    int l[3];
    scanf("%d %d %d", &l[0], &l[1], &l[2]);

    std::sort(l, l + 3);

    int d1 = l[1] - l[0];
    int d2 = l[2] - l[1];

    if (d1 == d2) {
        printf("%d\n", l[2] + d1);
    } else if (d1 > d2) {
        printf("%d\n", l[0] + d1 / 2);
    } else {
        printf("%d\n", l[1] + d2 / 2);
    }
}

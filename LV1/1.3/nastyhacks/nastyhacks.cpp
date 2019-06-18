#include <cstdio>

int main() {
    int r, e, c, n;
    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%d %d %d", &r, &e, &c);
        int diff = e - r;

        if (diff == c) {
            puts("does not matter");
        } else if (diff > c) {
            puts("advertise");
        } else {
            puts("do not advertise");
        }
    }
}

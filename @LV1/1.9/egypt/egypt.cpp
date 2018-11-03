#include <algorithm>
#include <cstdio>

int main() {
    while (true) {
        int l[3];
        scanf("%d %d %d", &l[0], &l[1], &l[2]);

        if (l[0] == 0 && l[1] == 0 && l[2] == 0) {
            break;
        }

        std::sort(l, l + 3);
        if (l[0] * l[0] + l[1] * l[1] == l[2] * l[2]) {
            puts("right");
        } else {
            puts("wrong");
        }
    }
}

#include <cstdio>

int main() {
    int x;
    int piece[6] = {1, 1, 2, 2, 2, 8};

    for (int i = 0; i < 6; i++) {
        scanf("%d", &x);
        printf("%d ", piece[i] - x);
    }
}
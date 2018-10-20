#include <algorithm>
#include <cstdio>

int main() {
    int l[3];
    char o[3];

    for (int i = 0; i < 3; i++) {
        scanf("%d", &l[i]);
    }
    scanf("%s", o);

    std::sort(l, l + 3);

    for (int i = 0; i < 3; i++) {
        printf("%d ", l[o[i] - 'A']);
    }
}
#include <cstdio>

int main() {
    int n, t, ans = 0, total = 0, l[100];
    scanf("%d %d", &n, &t);

    for (int i = 0; i < n; i++) {
        scanf("%d", &l[i]);
    }

    for (int i = 0; i < n; i++) {
        total += l[i];
        if (total > t) {
            break;
        }
        ans++;
    }
    printf("%d\n", ans);
}

#include <cstdio>

int main() {
    int n;
    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        char a[1000], b[1000], out[1000] = {0};
        scanf("%s", a);
        scanf("%s", b);

        for (int j = 0; a[j]; j++) {
            if (a[j] == b[j]) {
                out[j] = '.';
            } else {
                out[j] = '*';
            }
        }

        puts(a);
        puts(b);
        puts(out);
        puts("");
    }
}
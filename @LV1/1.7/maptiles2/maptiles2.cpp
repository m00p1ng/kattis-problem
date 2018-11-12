#include <cstdio>
#include <cstring>

int main() {
    char buff[100];
    scanf("%s", buff);

    int s = strlen(buff);
    int l = s - 1;
    int x = 0, y = 0;

    for (int i = 0; i < s; i++) {
        int n = buff[i] - '0';

        if (n == 1 || n == 3) {
            x |= 1 << (l - i);
        }
        if (n == 2 || n == 3) {
            y |= 1 << (l - i);
        }
    }

    printf("%d %d %d\n", s, x, y);
}

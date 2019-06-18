#include <cstdio>

int main() {
    char s[1000];
    scanf("%s", s);

    putchar(s[0]);
    for (int i = 1; s[i]; i++) {
        if (s[i] == '-') {
            putchar(s[i + 1]);
        }
    }
    puts("");
}
#include <cstdio>
#include <cstring>

int main() {
    int n;
    char s[1000];
    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%s", s);
        printf("%ld\n", strlen(s));
    }
}
#include <cstdio>
#include <cstring>

void swap(char *a, char *b) {
    char temp = *a;
    *a = *b;
    *b = temp;
}

int main() {
    char s[10];

    fgets(s, 10, stdin);
    int len = strlen(s) - 1;

    for(int i = 0, j = len - 1; i < j; i++, j--) {
        swap(&s[i], &s[j]);
    }

    int a, b;
    sscanf(s, "%d %d\n", &a, &b);

    printf("%d\n", a > b ? a : b);
}
#include <cstdio>

void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

int main() {
    int a = 1, b = 0, c = 0;
    char s[100];
    scanf("%s", s);

    for (int i = 0; s[i]; i++) {
        if (s[i] == 'A') {
            swap(&a, &b);
        } else if (s[i] == 'B') {
            swap(&b, &c);
        } else {
            swap(&a, &c);
        }
    }

    if (a) {
        puts("1");
    } else if (b) {
        puts("2");
    } else {
        puts("3");
    }
}
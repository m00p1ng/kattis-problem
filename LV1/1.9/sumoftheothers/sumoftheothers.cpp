#include <cstdio>
#include <cstdlib>
#include <cstring>

int main() {
    char s[1000];

    while (fgets(s, 1000, stdin)) {
        s[strlen(s) - 1] = '\0';
        int sum = 0;
        char *p = strtok(s, " ");

        while (p != NULL) {
            sum += atoi(p);
            p = strtok(NULL, " ");
        }
        printf("%d\n", sum / 2);
    }
}

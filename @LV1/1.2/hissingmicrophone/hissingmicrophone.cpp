#include <cstdio>
#include <cstring>

int main() {
    char s[100];
    scanf("%s", s);

    if (strstr(s, "ss")) {
        puts("hiss");
    } else {
        puts("no hiss");
    }
}

#include <cstdio>
#include <cstring>

int main() {
    char a[1100], b[1100];
    scanf("%s", a);
    scanf("%s", b);

    if(strlen(a) < strlen(b)) {
        puts("no");
    } else {
        puts("go");
    }
}
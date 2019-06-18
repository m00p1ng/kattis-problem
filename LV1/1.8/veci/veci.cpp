#include <algorithm>
#include <cstdio>
#include <cstdlib>
#include <cstring>

int main() {
    char s[10];
    scanf("%s", s);
    int init = atoi(s);
    int len = strlen(s);
    bool found = false;

    while (std::next_permutation(s, s + len)) {
        int val = atoi(s);
        if (val > init) {
            printf("%d\n", val);
            found = true;
            break;
        }
    }

    if (!found) {
        puts("0");
    }
}
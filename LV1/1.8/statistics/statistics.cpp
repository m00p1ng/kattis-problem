#include <cstdio>
#include <cstdlib>
#include <cstring>

int main() {
    int ts = 1;
    char s[100000];

    while (fgets(s, 100000, stdin) && s[0] != '\n') {
        char *p;
        p = strtok(s, " ");
        int sz = atoi(p);
        int mx = -1000000;
        int mn = 1000000;

        for (int i = 0; i < sz; i++) {
            p = strtok(NULL, " ");
            int tmp = atoi(p);
            mx = tmp > mx ? tmp : mx;
            mn = tmp < mn ? tmp : mn;
        }

        printf("Case %d: %d %d %d\n", ts, mn, mx, mx - mn);
        ts++;
    }
}
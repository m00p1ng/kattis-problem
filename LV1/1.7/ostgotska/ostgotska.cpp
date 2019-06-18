#include <cstdio>
#include <cstring>

int main() {
    char tmp[100];
    int s = 0, ae = 0;
    while (scanf("%s", tmp) == 1) {
        s++;
        if (strstr(tmp, "ae") != NULL) {
            ae++;
        }
    }
    if (10 * ae >= 4 * s) {
        puts("dae ae ju traeligt va");
    } else {
        puts("haer talar vi rikssvenska");
    }
}
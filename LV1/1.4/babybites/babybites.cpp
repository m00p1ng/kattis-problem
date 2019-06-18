#include <cstdio>
#include <cstdlib>

int main() {
    int n;
    scanf("%d", &n);

    char s[10];
    int cnt = 1;
    bool is_make_sense = true;

    for (int i = 0; i < n; i++) {
        scanf("%s", s);

        if (s[0] != 'm') {
            int num = atoi(s);
            if (num != cnt) {
                is_make_sense = false;
                break;
            }
        }
        cnt++;
    }

    if (is_make_sense) {
        puts("makes sense");
    } else {
        puts("something is fishy");
    }
}

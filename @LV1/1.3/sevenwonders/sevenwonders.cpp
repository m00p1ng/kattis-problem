#include <cstdio>

int min(int a, int b) { return a < b ? a : b; }

int calc_card(int *cnt) {
    int res = 0;
    for (int i = 0; i < 3; i++) {
        res += cnt[i] * cnt[i];
    }
    return res;
}

int main() {
    char s[100];
    scanf("%s", s);

    int cnt[] = {0, 0, 0};

    for (int i = 0; s[i]; i++) {
        if (s[i] == 'T')
            cnt[0]++;
        else if (s[i] == 'C')
            cnt[1]++;
        else if (s[i] == 'G')
            cnt[2]++;
    }

    int find_min = min(cnt[0], min(cnt[1], cnt[2]));
    printf("%d\n", calc_card(cnt) + 7 * find_min);
}

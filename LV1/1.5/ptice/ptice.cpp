#include <cstdio>

char a[300], b[300], g[300] = {0};

int max(int *score) {
    int m = -1;
    for (int i = 0; i < 3; i++) {
        if (score[i] > m) m = score[i];
    }
    return m;
}

void gen_ans() {
    for (int i = 0; i < 40; i++) {
        sprintf(a, "ABC%s", a);
        sprintf(b, "BABC%s", b);
        sprintf(g, "CCAABB%s", g);
    }
}

int main() {
    gen_ans();
    int n, score[3] = {0};
    char exam[110];
    char name[][10] = {"Adrian", "Bruno", "Goran"};

    scanf("%d", &n);
    scanf("%s", exam);

    for (int i = 0; i < n; i++) {
        if (a[i] == exam[i]) score[0]++;
        if (b[i] == exam[i]) score[1]++;
        if (g[i] == exam[i]) score[2]++;
    }
    int m = max(score);

    printf("%d\n", m);
    for (int i = 0; i < 3; i++) {
        if (score[i] == m) {
            printf("%s\n", name[i]);
        }
    }
}

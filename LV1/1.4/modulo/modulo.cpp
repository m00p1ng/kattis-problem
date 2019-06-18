#include <cstdio>

int main() {
    int visited[42] = {0};
    int n, cnt = 0;

    while (scanf("%d", &n) == 1) {
        if (visited[n % 42] == 0) {
            visited[n % 42] = 1;
            cnt++;
        }
    }
    printf("%d\n", cnt);
}
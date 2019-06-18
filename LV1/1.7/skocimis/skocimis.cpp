#include <cstdio>

int main() {
    int a, b, c;
    scanf("%d %d %d", &a, &b, &c);
    int dab = b - a;
    int dbc = c - b;

    int m = dab > dbc ? dab : dbc;

    printf("%d\n", m - 1);
}

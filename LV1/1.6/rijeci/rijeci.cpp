#include <cstdio>

int fib[50];

int gen_fibo() {
    fib[0] = 0;
    fib[1] = 1;

    for (int i = 2; i < 50; i++) {
        fib[i] = fib[i - 1] + fib[i - 2];
    }
}

int main() {
    gen_fibo();

    int n;
    scanf("%d", &n);

    printf("%d %d\n", fib[n - 1], fib[n]);
}

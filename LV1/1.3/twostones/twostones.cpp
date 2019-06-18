#include <cstdio>

int main() {
    int n;
    scanf("%d", &n);

    if(n % 2 == 1) {
        puts("Alice");
    } else {
        puts("Bob");
    }
}
#include <cstdio>

int main() {
    int n;
    scanf("%d", &n);

    for(int i = 0; i < n; i++) {
        int num;
        scanf("%d", &num);

        if(num % 2 == 0) {
            printf("%d is even\n", num);
        } else {
            printf("%d is odd\n", num);
        }
    }
}
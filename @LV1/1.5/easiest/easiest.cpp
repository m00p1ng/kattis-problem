#include <cstdio>

int sum_digit(int n) {
    int ans = 0;
    int temp = n;

    while (temp > 0) {
        ans += temp % 10;
        temp /= 10;
    }
    return ans;
}

int main() {
    while (true) {
        int n;
        scanf("%d", &n);
        if (n == 0) {
            break;
        }

        int i = 11;
        int sum_n = sum_digit(n);

        while (true) {
            int sum_i = sum_digit(n * i);
            if (sum_i == sum_n) {
                printf("%d\n", i);
                break;
            }
            i++;
        }
    }
}

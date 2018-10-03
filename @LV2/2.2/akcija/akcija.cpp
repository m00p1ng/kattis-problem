#include <algorithm>
#include <cstdio>
using namespace std;

bool cmp(int a, int b) { return a > b; }

int main() {
    int n = 0;
    int price[1000010] = {0};
    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%d", &price[i]);
    }

    sort(price, price + n, cmp);

    int sum = 0;
    for (int i = 0; i < n; i += 3) {
        sum += price[i] + price[i + 1];
    }
    printf("%d\n", sum);
}
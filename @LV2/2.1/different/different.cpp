#include <cstdio>
#include <cmath>

typedef long long ll;

ll abs(ll a) {
    return a > 0 ? a : -a;
}

int main() {
    ll a, b;

    while (scanf("%lld %lld", &a, &b) == 2) {
        printf("%lld\n", abs(a - b));
    }
}
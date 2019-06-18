#include <cstdio>
using namespace std;

int main() {
    int n, m;
    int A[1000010], B;

    while (scanf("%d %d", &n, &m), n || m) {
        int cnt = 0;
        int idx = 0;

        for (int i = 0; i < n; i++) {
            scanf("%d", &A[i]);
        }

        for (int i = 0; i < m; i++) {
            scanf("%d", &B);
            while (idx < n && B > A[idx]) {
                idx++;
            }
            if (idx < n && B == A[idx]) {
                cnt++;
            }
        }
        printf("%d\n", cnt);
    }
}
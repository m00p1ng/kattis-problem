#include <cstdio>
#include <map>
#include <string>
using namespace std;

int main() {
    int n, cnt = 0;
    char u[100], v[100];
    map<string, bool> uv;
    scanf("%d", &n);

    for (int i = 0; i < n && cnt < 12; i++) {
        scanf("%s %s", u, v);
        if (!uv[u]) {
            uv[u] = true;
            printf("%s %s\n", u, v);
            cnt++;
        }
    }
}
#include <cstdio>
#include <map>
#include <string>
using namespace std;

int main() {
    int n, m;
    char s[1000];
    map<string, bool> st;

    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        int cnt = 0;
        st.clear();
        scanf("%d", &m);

        for (int j = 0; j < m; j++) {
            scanf("%s", s);
            if (!st[s]) {
                st[s] = true;
                cnt++;
            }
        }
        printf("%d\n", cnt);
    }
}
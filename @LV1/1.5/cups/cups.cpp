#include <algorithm>
#include <cctype>
#include <cstdio>
#include <string>
#include <vector>
using namespace std;

typedef pair<int, string> is;

int main() {
    int n, tmp;
    char a[1000], b[1000];
    vector<is> l;

    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%s %s", a, b);
        if (isdigit(a[0])) {
            l.push_back(is(atoi(a), b));
        } else {
            l.push_back(is(2 * atoi(b), a));
        }
    }

    sort(l.begin(), l.end());
    for (auto c : l) {
        printf("%s\n", c.second.c_str());
    }
}

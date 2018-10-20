#include <cctype>
#include <cstdio>
#include <cstring>

int main() {
    char s[1000];
    int l[4] = {0};
    scanf("%s", s);

    for (int i = 0; s[i]; i++) {
        if (s[i] == '_') {
            l[0]++;
        } else if (islower(s[i])) {
            l[1]++;
        } else if (isupper(s[i])) {
            l[2]++;
        } else {
            l[3]++;
        }
    }

    double len = strlen(s);
    for (int n : l) {
        printf("%lf\n", n / len);
    }
}

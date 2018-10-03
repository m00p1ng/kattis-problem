#include <cstdio>

int main() {
    char line[1000010], out[1000010];
    int cnt = 0;

    scanf("%s", line);

    for (int i = 0; line[i]; i++) {
        if (line[i] == '<') {
            if (cnt > 0) {
                cnt--;
            }
        } else {
            out[cnt] = line[i];
            cnt++;
        }
    }
    out[cnt] = '\0';
    puts(out);
}

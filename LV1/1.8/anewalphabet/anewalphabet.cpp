#include <cctype>
#include <cstdio>
#include <cstring>
#include <map>
#include <string>
using namespace std;

map<char, string> dict;

void init_dict() {
    dict['a'] = "@";
    dict['b'] = "8";
    dict['c'] = "(";
    dict['d'] = "|)";
    dict['e'] = "3";
    dict['f'] = "#";
    dict['g'] = "6";
    dict['h'] = "[-]";
    dict['i'] = "|";
    dict['j'] = "_|";
    dict['k'] = "|<";
    dict['l'] = "1";
    dict['m'] = "[]\\/[]";
    dict['n'] = "[]\\[]";
    dict['o'] = "0";
    dict['p'] = "|D";
    dict['q'] = "(,)";
    dict['r'] = "|Z";
    dict['s'] = "$";
    dict['t'] = "']['";
    dict['u'] = "|_|";
    dict['v'] = "\\/";
    dict['w'] = "\\/\\/";
    dict['x'] = "}{";
    dict['y'] = "`/";
    dict['z'] = "2";
}

void transform(char *s) {
    for (int i = 0; s[i]; i++) {
        char c = tolower(s[i]);

        if (!strcmp(dict[c].c_str(), "")) {
            printf("%c", c);
        } else {
            printf("%s", dict[c].c_str());
        }
    }
}

int main() {
    init_dict();
    char s[1000];
    fgets(s, 1000, stdin);
    transform(s);
}
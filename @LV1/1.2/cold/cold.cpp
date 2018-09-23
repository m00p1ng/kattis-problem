#include <cstdio>

int main()
{
  int n, ans = 0, tmp;

  scanf("%d", &n);

  for (int i = 0; i < n; i++)
  {
    scanf("%d", &tmp);
    if (tmp < 0)
      ans++;
  }
  printf("%d\n", ans);
}
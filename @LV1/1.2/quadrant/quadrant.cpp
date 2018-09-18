#include <cstdio>

int quadrant(int x, int y)
{
  if (x > 0 && y > 0)
    return 1;
  if (x < 0 && y > 0)
    return 2;
  if (x < 0 && y < 0)
    return 3;
  return 4;
}

int main()
{
  int x, y;
  scanf("%d %d", &x, &y);
  printf("%d\n", quadrant(x, y));
}
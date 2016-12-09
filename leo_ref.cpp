#include <bits/stdc++.h>

using namespace std;

double dp[300][5][5];

double solve(int s, int t, int o)
{
  // s is the sum,
  // t is the remaining slots in tens
  // o is the remaining slots in ones
  if (dp[s][t][o] < 0) {
    if (t == 0 and o == 0) {
      dp[s][t][o] = s > 150 ? 0 : s;
    }
    else {
      double ex = 0;
      for (int v = 1; v <= 6; ++v) {
        double better = 0;
        if (t != 0)
          better = max(better, solve(s + v*10, t - 1, o));
        if (o != 0)
          better = max(better, solve(s + v, t, o - 1));
        ex += better;
      }
      dp[s][t][o] = ex / 6;
    }
  }
  return dp[s][t][o];
}


int main()
{
  // initialize
  for (int i = 0; i < 300; ++i) {
    for (int j = 0; j < 5; ++j) {
      for (int k = 0; k < 5; ++k) {
        dp[i][j][k] = -1;
      }
    }
  }

  double ans = solve(0, 4, 4);
  printf("%.6f\n", ans);
  return 0;
}

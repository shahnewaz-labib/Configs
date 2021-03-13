#include <bits/stdc++.h>
using namespace std;

const int N = 1e6+10;
vector<int> adj[N];
bool vis[N], bridge;
int discover[N], low[N];
int timer;

vector<pair<int, int>> ans;

void dfs(int node, int parent) {
    vis[node] = true;
    low[node] = discover[node] = timer++;
    for(int child : adj[node]) {
        if(child == parent) continue;
        if(vis[child]) {
            low[node] = min(low[node], discover[child]);
            if(discover[node] > discover[child]) {
                ans.push_back({node, child});
            }
        } else {
            dfs(child, node);
            low[node] = min(low[node], low[child]);
            if(low[child] > discover[node]) {
                bridge = true;
                return;
            }
            ans.push_back({node, child});
        }
    }
}

int main() {
#ifndef ONLINE_JUDGE
    freopen("input.txt", "r", stdin);
    // freopen("output.txt", "w", stdout);
#endif
    int nodes, edges, a, b;
    cin >> nodes >> edges;
    for(int i = 0; i < edges; i++) {
        cin >> a >> b;
        adj[a].push_back(b);
        adj[b].push_back(a);
    }
    dfs(1, -1);
    if(bridge) cout << 0 << "\n";
    else for(auto it : ans) cout << it.first << " " << it.second << "\n";

    return 0;
}
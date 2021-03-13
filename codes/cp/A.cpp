#include <bits/stdc++.h>
#define lesgoo		ios::sync_with_stdio(0);cin.tie(0); cout.tie(0);
#define ll			long long
#define pii 		pair<int, int>
#define MIN(x,y)	(x) < (y) ? x : y
#define MAX(x,y)	(x) > (y) ? x : y
#define TC			int t;cin>>t;for(int tc=1;tc<=t;tc++)
#define Unique(a)   sort(all(a)),a.erase(unique(all(a)),a.end
#define yeet        return 0;
#define nl          "\n"
#define de(x)       cout << #x << " = " << x << "\n";
#define HERE        cout << "HERE\n";
int fx[]={+0,+0,+1,-1,-1,+1,-1,+1};
int fy[]={-1,+1,+0,+0,+1,+1,-1,-1};
using namespace std;
const int N = 1e5+10;
vector<int> adj[N];
bool vis[N];
int timer = 0;
int discover[N], low[N];
bool bridge;

void dfs(int node, int parent) {
    vis[node] = 1;
    discover[node] = low[node] = timer++;
    for(int child : adj[node]) {
        if(child == parent) continue;
        if(vis[node]) {
            low[node] = min(low[node], discover[child]);
        } else {
            dfs(child, node);
            low[node] = min(low[child], low[node]);
            if(low[child] > discover[node]) {
                bridge = true;
                return;
            }
        }
    }
}

int main() {
#ifndef ONLINE_JUDGE
    freopen("input.txt", "r", stdin);
    // freopen("output.txt", "w", stdout);
#endif
    int nodes, edges, a, b; cin >> nodes >> edges;
    for(int i = 0; i < edges; i++) {
        cin >> a >> b;
        adj[a].push_back(b);
        adj[b].push_back(a);
    }

    dfs(1, -1);

    if(bridge) cout << 0 << nl;
    else cout << "There could be an ans\n";


	return 0;
}

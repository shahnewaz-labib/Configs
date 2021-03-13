#include<bits/stdc++.h>
using namespace std;
 
#define Fast            ios_base::sync_with_stdio(false);cin.tie(nullptr);cout.tie(nullptr);
#define fWrite          freopen ("out.txt","w",stdout);
#define TC              int t;cin >> t;FOR(tc,1,t)
#define LL              long long
#define ULL             unsigned long long
#define ff              first
#define ss              second
#define pb              push_back
#define pii             pair<int,int>
#define all(a)          a.begin(),a.end()
#define MEM(a,x)        memset(a,x,sizeof(a))
#define FOR(i,a,b)      for(int i=a;i<=b;i++)
#define ROF(i,a,b)      for(int i=a;i>=b;i--)
#define REP(i,b)        for(int i=0;i<b;i++)
 
const int N=100005;
 
vector<int>V[N];
int vis[N];
int discover[N];
int low[N];
int pr[N];
bool bridge;
vector<pii>dir;
 
void dfs(int u)
{
    static int time = 0;
    vis[u] = 1;
    discover[u] = low[u] = ++time;
 
    for(int v : V[u]){
        if(!vis[v]){
            pr[v] = u;
            dfs(v);
            dir.pb({u,v});
            low[u] = min(low[u],low[v]);
            if(low[v]>discover[u]){
                bridge = true;
            }
        }
        else if(pr[u]!=v) {
            low[u] = min(low[u],discover[v]);
            if(vis[v]==1) dir.pb({u,v});
        }
    }
    vis[u] = 2;
}
 
int main()
{
    MEM(pr,-1);
    Fast
    int n,m;
    cin >> n >> m;
    for(int i=1;i<=m;i++)
    {
        int u,v;
        cin >> u >> v;
        V[u].pb(v);
        V[v].pb(u);
    }
    dfs(1);
    if(bridge) cout << 0 << "\n";
    else for(pii p:dir) cout << p.ff << ' ' << p.ss << '\n';
}
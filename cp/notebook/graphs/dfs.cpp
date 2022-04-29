/*mokosucio's file*/
#include <bits/stdc++.h>

using namespace std;

#define pb push_back
#define forn(i, n) for (ll i = 0; i < (ll) (n); ++i)
#define IO ios_base::sync_with_stdio(false); cin.tie(0); cout.tie(0)

using ll = long long;
const ll inf = 1e9+5; 

const double PI =  3.14159265;


void dfs(ll v, vector<ll> adj[], bool *visited){
	if(visited[v]==true) return;
	visited[v] = true;
	for(auto u : adj[v]){
		dfs(u, adj, visited);
	}
}

int main(){
	IO;
	ll n,e,vi,vf;
	cin>>n>>e;
	vector<ll> adj[n];
	bool visited[n];
	memset(visited,false,n);
	while(e--){
		cin>>vi>>vf;
		adj[vi].pb(vf);
		adj[vf].pb(vi);
	}
	dfs(vi, adj, visited);
	bool connected = true;
	for(int i=0; i<n; i++){
		if(!visited[i]){ connected = false;break;}
	}
	(connected)?cout<<"Yes\n":cout<<"No\n";
	return 0;
}


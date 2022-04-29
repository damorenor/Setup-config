/*
ID: damoren1
PROG: transform
LANG: C++14
*/
#include <bits/stdc++.h>

#define cn count
#define pb push_back
#define in insert
#define fs first
#define sc second
#define sz size
#define len length
#define forn(i,n) for (ll i = 0; i < (ll) (n); i++)
#define forni(i,n) for (ll i = 1; i < (ll) (n); i++)
#define IO ios_base::sync_with_stdio(false); cin.tie(0);cout.tie(0)

using namespace std;
using ll = long long;
const ll inf = 1e9+7;
const double PI = 3.141592653589793;

string cntCol(string &col){
}

int main(){
	IO;
	//ofstream fout ("transform.out");
	//ifstream fin ("transform.in");
	ll n;
	cin>>n;
	string pt1[n];
	string pt2[n];
	string col1, row1, col2, row2;
	forn(i,n) cin>>pt1[i];
	forn(i,n) cin>>pt2[i];
	col1 = cntCol(pt1); col2 = cntCol(pt2);
	row1 = cntRow(pt1); row2 = cntRow(pt2);

	return 0;
}

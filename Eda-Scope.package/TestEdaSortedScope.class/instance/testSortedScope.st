tests
testSortedScope
	| nodes1 nodes2 scope1 scope2 string |
	nodes1 := { EdaScopeExtentNode from: 'a' begin: 1 end: 10 .
					EdaScopeExtentNode from: 'c' begin: 3 end: 7 }.
	scope1 := EdaSortedScope from: nodes1.
	nodes2 := { EdaScopeExtentNode from: 'd' begin: 4 end: 5 .
					EdaScopeExtentNode from: 'b' begin: 2 end: 9}.
	scope2 := EdaSortedScope from: nodes2.
	scope1 nodes addAll: scope2 nodes.
	string := String new.
	scope1 nodesDo: [ :node | string := string , node string ].
	self assert: string equals: 'dcba'.
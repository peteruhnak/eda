tests
testSelects
	| n1 n2 n3 |
	n1 := EdaScopeNode from: 'a.b.c'.
	n2 := EdaScopeNode from: 'a.b'.
	n3 := EdaScopeNode from: ''.
	self assert: (n2 selects: n1).
	self assert: (n1 selects: n2) not.
	self assert: (n1 selects: n1).
	self assert: (n1 selects: n3) not.
	self assert: (n3 selects: n2).
tests
testNumberOfAtoms
	| n1 |
	n1 := EdaScopeNode from: '               '.
	self assert: n1 numberOfAtoms = 0.
	n1 := EdaScopeNode from: 'a.b.c.d'.
	self assert: n1 numberOfAtoms = 4.
	
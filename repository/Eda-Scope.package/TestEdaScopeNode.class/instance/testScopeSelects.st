tests
testScopeSelects
	| node |
	node := EdaScopeNode new.
	self assert: (node scope: 'a.b' selects: 'a.b.c').
	self deny: (node scope: 'a.b.c' selects: 'a.b').
	self assert: (node scope: 'a.b.c' selects: 'a.b.c').
	self deny: (node scope: 'a.b.c' selects: '').
	self assert: (node scope: '' selects: 'a.b')
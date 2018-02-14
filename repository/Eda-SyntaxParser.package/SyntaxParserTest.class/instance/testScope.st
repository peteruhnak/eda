tests
testScope
	| sp |
	sp := SyntaxParser new.
	sp scope: 'source.smalltalk'.
	self assert: (sp scope = 'source.smalltalk').
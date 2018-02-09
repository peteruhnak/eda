tests
testScope
	| grammar |
	grammar := EdaGrBeginRule new.
	grammar scope: 'source.smalltalk'.
	self assert: (grammar scope = 'source.smalltalk')

tests
testScope
	| rule |
	rule := EdaGrBeginRule new.
	rule scope: 'variable.language.smalltalk'.
	self assert: (rule scope = 'variable.language.smalltalk').
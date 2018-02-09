tests
testScope
	| rule |
	rule := EdaGrBeginRule new.
	rule scope: 'comment.smalltalk'.
	self assert: (rule scope = 'comment.smalltalk').
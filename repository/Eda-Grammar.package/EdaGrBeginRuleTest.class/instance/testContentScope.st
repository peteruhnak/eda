tests
testContentScope
	| rule |
	rule := EdaGrBeginRule new.
	rule contentScope: 'comment.smalltalk'.
	self assert: (rule contentScope  = 'comment.smalltalk').
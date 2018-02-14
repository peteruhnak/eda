tests
testCaptures
	| captureSet rule |
	captureSet := Dictionary new.
	captureSet at: '0' put: 'punctuation.definition.comment.source.cs'.
	rule := EdaGrEndRule new.
	rule captures: captureSet.
	self assert: ((rule captures at: '0') =  'punctuation.definition.comment.source.cs')
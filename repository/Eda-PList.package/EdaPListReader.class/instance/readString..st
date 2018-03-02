xml reading
readString: anElement
	self assert: [ anElement name = 'string' ].
	^ anElement stringValue
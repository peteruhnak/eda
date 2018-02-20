xml reading
readKey: anElement
	self assert: [ anElement name = 'key' ].
	^ anElement stringValue
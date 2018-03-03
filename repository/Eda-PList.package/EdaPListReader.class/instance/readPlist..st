xml reading
readPlist: anElement
	self assert: [ anElement name = 'plist' ].
	^ self readValue: anElement firstElement
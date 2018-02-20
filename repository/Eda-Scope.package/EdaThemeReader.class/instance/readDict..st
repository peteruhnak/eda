xml reading
readDict: anElement
	| dict |
	self assert: [ anElement name = 'dict' ].
	dict := Dictionary new.
	anElement elements
		pairsDo: [ :key :value | dict at: (self readKey: key) put: (self readValue: value) ].
	^ dict
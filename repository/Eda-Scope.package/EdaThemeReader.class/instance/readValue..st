xml reading
readValue: anElement
	self assert: [ #('string' 'array' 'dict') includes: anElement name ].
	anElement name = 'string'
		ifTrue: [ ^ self readString: anElement ].
	anElement name = 'array'
		ifTrue: [ ^ self readArray: anElement ].
	anElement name = 'dict'
		ifTrue: [ ^ self readDict: anElement ]
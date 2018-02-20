xml reading
readArray: anElement
	self assert: [ anElement name = 'array' ].
	^ (anElement elements collect: [ :each | self readDict: each ]) asArray
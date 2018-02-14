private
readFieldAt: byteOffset
	self isPointer ifTrue: [ 
		^ self pointerReadFieldAt: byteOffset ].

	^ String streamContents: [ :stream |
		stream << '^handle platformLongAt: ' << byteOffset asString ].
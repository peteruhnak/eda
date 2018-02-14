private
writeFieldAt: byteOffset with: valueName
	self isPointer ifTrue: [ 
		^ self externalTypeWithArity 
			writeFieldAt: byteOffset
			with: valueName ].

	^ String streamContents: [ :stream |
		stream 
			<< '^handle platformLongAt: ' << byteOffset asString
			<< ' put: ' << valueName ]
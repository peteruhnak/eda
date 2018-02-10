finalization
finalizeResourceData: aHandle
	aHandle isNull ifTrue: [ ^ self ].
	self free: aHandle.
	aHandle beNull.
printing
printOn: aStream
	super printOn: aStream.
	aStream << '('.
	self settings printOn: aStream.
	aStream << ')'
printing
printOn: aStream
	super printOn: aStream.
	aStream << '(''' << string << ''')'
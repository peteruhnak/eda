printing
printOn: aStream
	super printOn: aStream.
	aStream << '(scope=''' << self scope << ''', name=''' << self name << ''')'
printing
printOn: aStream
	super printOn: aStream.
	aStream << '(beg = ' << beg << ', end = ' << end << ', scope = ''' << scope << ''')'
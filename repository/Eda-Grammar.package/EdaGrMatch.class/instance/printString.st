printing
printString
	| ws |
	ws := WriteStream with: (String new).
	ws << 'anEdaGrMatch(beg = ' << beg << ', end = ' << end << ', scope = "' << scope << '")'.
	^ ws contents
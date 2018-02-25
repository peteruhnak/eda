xml reading
readValue: anElement
	"this can be any of the PList types:
	<array>, <dict>, <string>, <data>, <date>, <integer>, <real>, <true/>, <false/>
	
	this check is probably redundant, when we check the whole document using DTD"
	self assert: [ self typeNames includes: anElement name ].
	^ self perform: ('read', anElement name capitalized, ':') asSymbol with: anElement
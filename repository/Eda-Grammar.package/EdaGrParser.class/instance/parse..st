parsing
parse: aString
	
	resultList := OrderedCollection new.
	string := aString.
	extStr := OnigExternalString from: aString.
	index := 1.
	
	resultList add: (EdaGrMatch beg: 1 end: string size scope: rootScope).
	
	[ index <= aString size ] whileTrue: [
		keepMatching := true.
		(contextStack isEmpty) 
			ifTrue: [ self visitIncludeRule: rootRule ]
			ifFalse: [ self visitIncludeRule: contextStack top includeRule ].
		keepMatching ifTrue: [ index := index + 1 ] ].
	^ resultList 
	
	
accessing
complete: key
	(key size < 2) "Key detection will only occur when the string is longer than 2"
		ifTrue: [ 
			^ nil.
		]
		ifFalse: [ 
			
			snippets at: key ifPresent: [ :v | ^ v formattedBody. ]  ifAbsent: [ ^nil. ]
			"(key match: 'for') ifTrue: [ ^(Snippet withText: '( ; ; ){\n\n}' on: 1) ] ifFalse: [ ^nil. ]"
			
		].
	
	
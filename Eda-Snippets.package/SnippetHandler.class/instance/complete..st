changing suspended state
complete: key
	|emptySnippet|
	emptySnippet := Snippet named: 'null' withBody: key, (Character tab asString).
	(key size < 2) "Key detection will only occur when the string is longer than 2"
		ifTrue: [ 
			^ emptySnippet body.
		]
		ifFalse: [ 
			
			snippets at: key ifPresent: [ :v | ^ v formattedBody. ]  ifAbsent: [ ^emptySnippet body. ]
			"(key match: 'for') ifTrue: [ ^(Snippet withText: '( ; ; ){\n\n}' on: 1) ] ifFalse: [ ^nil. ]"
			
		].
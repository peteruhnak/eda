accessing
handle: key
	(key size > 3) "Autocomplete will only occur when the string is longer than 3"
		ifTrue: [ 
			^ true. "will return list in the future?"
		]
		
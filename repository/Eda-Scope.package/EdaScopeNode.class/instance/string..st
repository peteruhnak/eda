accessing
string: aString
	string := aString trimBoth.
	string isEmpty 
		ifTrue: [ numberOfAtoms := 0 ]
		ifFalse: [ numberOfAtoms := (string count: [ :c | c = $. ]) + 1 ]
testing
scope: scope selects: otherScope

	"eg. otherScope 'string' selects scope 'string.quoted.double.c', but not the other way around"

	"empty selector selects all"
	scope isEmpty
		ifTrue: [ ^ true ].

	"if otherString is shorter than string, it can never be selected"
	scope size <= otherScope size
		ifFalse: [ ^ false ].
		
	1 to: scope size do: [ :i | 
		(scope at: i) = (otherScope at: i)
			ifFalse: [ ^ false ] ].
		
	scope size = otherScope size
		ifTrue: [ ^ true ]
		ifFalse: [ ^ (otherScope at: scope size + 1) = $. ]
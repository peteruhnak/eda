testing
selects: anEdaScopeNode
	"answers whether self selects anEdaScopeNode
	 eg. string does select string.quoted.double.c, but not the other way around"

	| scopes |
	scopes := self scopes.
	"empty selector selects all"
	scopes ifEmpty: [ ^ true ].
	scopes
		do: [ :scope | 
			anEdaScopeNode scopes
				do: [ :otherScope | 
					(self scope: scope selects: otherScope)
						ifTrue: [ ^ true ] ] ].
	^ false
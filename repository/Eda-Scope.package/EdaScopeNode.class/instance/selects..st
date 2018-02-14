testing
selects: anEdaScopeNode
	"answers whether self selects anEdaScopeNode
	 eg. string does select string.quoted.double.c, but not the other way around"

	| otherString |
	otherString := anEdaScopeNode string.

	"empty selector selects all"
	string isEmpty
		ifTrue: [ ^ true ].

	"if otherString is shorter than string, it can never be selected"
	string size <= otherString size
		ifFalse: [ ^ false ].
		
	1 to: string size do: [ :i | 
		(string at: i) = (otherString at: i)
			ifFalse: [ ^ false ] ].
		
	string size = otherString size
		ifTrue: [ ^ true ]
		ifFalse: [ ^ (otherString at: string size + 1) = $. ]
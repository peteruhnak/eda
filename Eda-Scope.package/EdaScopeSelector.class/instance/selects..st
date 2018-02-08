testing
selects: anEdaScope
	"anwers whether this selector matches a given scope, giving the match a rank to compare with other matches"

	| rank power index currentNode |
	rank := 0.
	power := 0.
	index := 1.

	"empty selector, matches everything with lowest rank"
	nodes isEmpty
		ifTrue: [ ^ 0 ].
		
	anEdaScope
		nodesDo: [ :node | 
			index > nodes size
				ifTrue: [ ^ rank ].
			currentNode := nodes at: nodes size - index + 1.
			power := power + node numberOfAtoms.
			(currentNode selects: node)
				ifTrue: [ 0 to: currentNode numberOfAtoms - 1 do: [ :i | rank := rank + (1 / 2 ** (power - i)) ].
					index := index + 1 ] ].
	index > nodes size
		ifTrue: [ ^ rank ]
		ifFalse: [ ^ -1 ]
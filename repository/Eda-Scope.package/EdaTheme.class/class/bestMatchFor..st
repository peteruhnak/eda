as yet unclassified
bestMatchFor: aScope
	| bestRank bestMatch |
	
	bestRank := -1. "-1 means no match, refactor this"
	bestMatch := nil.
	selectors associationsDo: [ :assoc |
		| currentRank |
		currentRank := assoc key selects: aScope.
		currentRank > bestRank ifTrue: [ 
			bestRank := currentRank.
			bestMatch := assoc value ]
		 ].
	^ bestMatch 
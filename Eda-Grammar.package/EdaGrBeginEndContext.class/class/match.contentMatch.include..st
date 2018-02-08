as yet unclassified
match: aMatch contentMatch: aContentMatch include: anEdaGrIncludeRule
	^ self new
		match: aMatch;
		contentMatch: aContentMatch;
		includeRule: anEdaGrIncludeRule;
		yourself
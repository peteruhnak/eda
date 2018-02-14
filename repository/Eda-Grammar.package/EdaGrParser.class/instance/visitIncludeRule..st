visiting
visitIncludeRule: includeRule
	includeRule repository ifNotNil: [ :r | 
		r rulesDo: [ :rule | 
		keepMatching ifFalse: [ ^ self ].
		rule accept: self ] ]
	
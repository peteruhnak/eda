visiting
visitIncludeRule: includeRule
	includeRule repository rulesDo: [ :rule | 
		keepMatching ifFalse: [ ^ self ].
		rule accept: self ]
	
tests
testRepository
	| grammar matchRule region|
	grammar := EdaGrammar new.
	region := OnigRegion new.
	matchRule := EdaGrEndRule new.
	matchRule regex: '\b(true|false|nil|self|super|thisContext)\b'.
	grammar repository: (EdaGrRepository createWithRule: matchRule).
	self assert: (((grammar repository rules first regex) match: 'thisContext' at: 1 region: region) = -1) not.
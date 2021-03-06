tests
testRepository
	| rule matchRule region|
	rule := EdaGrIncludeRule new.
	region := OnigRegion new.
	matchRule := EdaGrEndRule new.
	matchRule regex: '\b(true|false|nil|self|super|thisContext)\b'.
	rule repository: (EdaGrRepository createWithRule: matchRule).
	self assert: (((rule repository rules first regex) match: 'thisContext' at: 1 region: region) = -1) not.
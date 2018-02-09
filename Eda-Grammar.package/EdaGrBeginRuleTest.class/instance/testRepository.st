tests
testRepository
	| rule endRule region|
	rule := EdaGrBeginRule new.
	region := OnigRegion new.
	rule regex: '"'.
	endRule := EdaGrEndRule new.
	endRule regex: '"'.
	rule repository: (EdaGrRepository createWithRule: endRule).
	self assert: (((rule regex) match: '"' at: 1 region: region) = -1) not.
	self assert: (((rule repository rules first regex) match: '"' at: 1 region: region) = -1) not.
tests
testRepository
	| sp repo region |
	sp := SyntaxParser new.
	sp parseFile: self sampleFile.
	repo := sp repository.
	region := OnigRegion new.
	self assert: repo rules first repository rules first scope = 'storage.type.source.test'.
	self
		assert:
			((repo rules first repository rules first regex match: 'test' at: 1 region: region) = -1)
				not
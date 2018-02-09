tests
testParseFile
	| sp repo region |
	sp := SyntaxParser new.
	repo := sp parseFile: 'includeTest.txt'.
	region := OnigRegion new.
	self assert: ( repo rules first repository rules first scope = 'storage.type.source.test').
	self assert:(((repo rules first repository rules first regex) match: 'test' at: 1 region: region) = -1) not.

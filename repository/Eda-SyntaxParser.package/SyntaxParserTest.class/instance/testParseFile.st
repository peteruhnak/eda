tests
testParseFile
	| sp region |
	sp := SyntaxParser new.
	sp parseFile: 'includeTest.txt'.
	region := OnigRegion new.
	self assert: ( sp repository rules first repository rules first scope = 'storage.type.source.test').
	self assert:(((sp repository rules first repository rules first regex) match: 'test' at: 1 region: region) = -1) not.

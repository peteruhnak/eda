tests
testParseIncludeRule
	| gp region |
	region := OnigRegion new.
	gp := SyntaxParser new.
	gp parseFile: self sampleFile.
	self
		assert: gp repository rules first repository rules first scope = 'storage.type.source.test'.
	self
		assert:
			((gp repository rules first repository rules first regex
				match: 'test'
				at: 1
				region: region) = -1) not

	"for testing include rule we need to create repository which the rule should include and test whether or not correct rules were included. Because of the size of such XML I have decided to create testing file"
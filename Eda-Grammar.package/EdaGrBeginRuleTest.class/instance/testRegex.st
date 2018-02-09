tests
testRegex
	| rule region |
	rule := EdaGrBeginRule new.
	rule regex: '"'.
	region := OnigRegion new.
	self assert: (((rule regex) match: '"' at: 1 region: region) = -1) not.

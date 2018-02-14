tests
testRegex
	| rule region |
	rule := EdaGrBeginRule new.
	rule regex: '\b(true|false|nil|self|super|thisContext)\b'.
	region := OnigRegion new.
	self assert: (((rule regex) match: 'true' at: 1 region: region) = -1) not.

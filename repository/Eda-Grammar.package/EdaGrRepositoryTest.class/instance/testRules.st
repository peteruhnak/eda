tests
testRules
	| ruleSet matchRule repo region|
	repo := EdaGrRepository new.
	region := OnigRegion new.
	ruleSet := OrderedCollection new.
	matchRule := EdaGrMatchRule new.
	matchRule scope: 'comment.test'.
	matchRule regex: '\b(test)\b'.
	ruleSet add: matchRule.
	repo rules: ruleSet.
	self assert: (repo rules first scope = 'comment.test').
	self assert:(((repo rules first regex) match: 'test' at: 1 region: region) = -1) not.
	
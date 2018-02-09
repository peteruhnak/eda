tests
testCreateWithRule
	| ruleSet matchRule repo region|
	region := OnigRegion new.
	ruleSet := OrderedCollection new.
	matchRule := EdaGrMatchRule new.
	matchRule scope: 'comment.test'.
	matchRule regex: '\b(test)\b'.
	repo := Repository createWithRule: matchRule .
	self assert: (repo rules first scope = 'comment.test').
	self assert:(((repo rules first regex) match: 'test' at: 1 region: region) = -1) not.
	
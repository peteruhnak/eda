tests
testAddRuleToBeginning
	| matchRule repo region matchRule2|
	region := OnigRegion new.
	repo := Repository new.
	matchRule := EdaGrMatchRule new.
	matchRule scope: 'comment.test'.
	matchRule2 := EdaGrMatchRule new.
	matchRule2 scope: 'comment.test2'.

	repo addRuleToBeginning: matchRule.
	repo addRuleToBeginning: matchRule2.

	self assert: (repo rules first scope = 'comment.test2').

	
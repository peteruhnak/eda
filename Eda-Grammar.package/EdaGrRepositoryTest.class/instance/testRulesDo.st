tests
testRulesDo
	| ruleSet matchRule repo region testScope|
	repo := EdaGrRepository new.
	region := OnigRegion new.
	ruleSet := OrderedCollection new.
	matchRule := EdaGrMatchRule new.
	matchRule scope: 'comment.test'.
	matchRule regex: '\b(test)\b'.
	ruleSet add: matchRule.
	repo rules: ruleSet.

	repo rulesDo: [ :each | testScope := each scope. ].
	self assert: (testScope = 'comment.test').
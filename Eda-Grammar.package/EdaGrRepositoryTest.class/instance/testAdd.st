tests
testAdd
	| matchRule repo region matchRule2|
	region := OnigRegion new.
	repo := EdaGrRepository new.
	matchRule := EdaGrMatchRule new.
	matchRule scope: 'comment.test'.
	matchRule2 := EdaGrMatchRule new.
	matchRule2 scope: 'comment.test2'.
	repo add: matchRule.
	repo add: matchRule2.
	self assert: (repo rules first scope = 'comment.test').

	
initialization
createWithRule: aRule
	| repo |
	repo := EdaGrRepository  new.
	repo addRuleToBeginning: aRule.
	^ repo.
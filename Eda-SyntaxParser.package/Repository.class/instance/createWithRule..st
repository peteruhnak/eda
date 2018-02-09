accessing
createWithRule: aRule
	| repo |
	repo := Repository  new.
	repo addRuleToBeginning: aRule.
	^ repo.
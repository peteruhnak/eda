initialization
createWithRule: aRule
	| repo |
	repo := EdaGrRepository new.
	repo rules add: aRule .
	^ repo.
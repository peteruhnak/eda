accessing
grammar
	| gr |
	gr := EdaGrammar new.
	gr scope: self scope.
	gr repository: self repository.
	^ gr. 
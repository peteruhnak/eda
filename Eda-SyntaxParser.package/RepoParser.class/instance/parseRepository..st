parsing
parseRepository: aRepositoryXML
	|rules repo|
	rules := OrderedCollection new.
	repo := Repository new.

	(aRepositoryXML xpath: 'dict') do: [ :each | 	rules add: (self parseDict: each) ].
	repo rules: rules.
	^repo.	
	
	
	
	
	
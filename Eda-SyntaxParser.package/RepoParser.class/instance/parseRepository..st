parsing
parseRepository: aRepositoryXML
	|rules repo|
	rules := OrderedCollection new.
	repo := EdaGrRepository  new.

	(aRepositoryXML xpath: 'dict') do: [ :each | 	rules add: (self parseDict: each) ].
	repo rules: rules.
	^repo.	
	
	
	
	
	
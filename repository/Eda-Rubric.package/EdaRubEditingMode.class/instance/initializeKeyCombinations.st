initialization
initializeKeyCombinations
	textArea removeKeyCombination: 9.
	
	textArea on: 9 do: [ 
		self launchSnippet.
		 ].
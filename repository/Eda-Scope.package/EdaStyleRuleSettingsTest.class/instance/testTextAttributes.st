tests
testTextAttributes
	settings := EdaStyleRuleSettings new
		settings:
			{'foreground' -> '#FF0000'.
			'fontStyle' -> 'bold'} asDictionary.
	self
		assert: settings textAttributes
		equals:
			{TextColor color: Color red.
			TextEmphasis bold}
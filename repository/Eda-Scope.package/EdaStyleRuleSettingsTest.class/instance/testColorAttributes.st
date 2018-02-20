tests
testColorAttributes
	settings := EdaStyleRuleSettings new settings: {'foreground' -> '#FF0000'} asDictionary.
	self assert: settings colorAttributes equals: {TextColor color: Color red}
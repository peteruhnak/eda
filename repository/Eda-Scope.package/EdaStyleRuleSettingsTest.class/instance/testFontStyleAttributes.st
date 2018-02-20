tests
testFontStyleAttributes
	settings := EdaStyleRuleSettings new
		settings: {'fontStyle' -> 'underline italic bold '} asDictionary.
	self
		assert: settings fontStyleAttributes asSet
		equals:
			{TextEmphasis italic.
			TextEmphasis underlined.
			TextEmphasis bold} asSet
tests
testFontStyleAttributesEmpty
	settings := EdaStyleRuleSettings new settings: {} asDictionary.
	self assert: settings fontStyleAttributes equals: {}
tests - converting
testStyleRuleSettingsFrom
	| dict settings |
	dict := {'foreground' -> '#AE81FF'} asDictionary.
	settings := reader styleRuleSettingsFrom: dict.
	self assert: settings settings equals: dict.
	self assert: settings foreground equals: (Color fromHexString: 'AE81FF')
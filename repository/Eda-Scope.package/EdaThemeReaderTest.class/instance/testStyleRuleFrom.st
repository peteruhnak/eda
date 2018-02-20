tests - converting
testStyleRuleFrom
	| dict rule |
	dict := {'name' -> 'Number'.
	'scope' -> 'constant.numeric'.
	'settings' -> Dictionary new} asDictionary.
	rule := reader styleRuleFrom: dict.
	self assert: rule name equals: 'Number'.
	self assert: rule scope equals: 'constant.numeric'.
	self assert: rule settings settings equals: (dict at: 'settings')
tests - xml reading
testReadValueString
	| doc result |
	doc := XMLDOMParser parse: '<string>AA</string>'.
	result := reader readValue: doc root.
	self assert: result equals: 'AA'.
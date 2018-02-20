tests - xml reading
testReadValueArray
	| doc result |
	doc := XMLDOMParser parse: '<array/>'.
	result := reader readValue: doc root.
	self assert: result equals: {}
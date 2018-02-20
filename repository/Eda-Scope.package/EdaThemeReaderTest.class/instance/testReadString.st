tests - xml reading
testReadString
	| doc |
	doc := XMLDOMParser parse: '<string>AA</string>'.
	self assert: (reader readString: doc root) equals: 'AA'
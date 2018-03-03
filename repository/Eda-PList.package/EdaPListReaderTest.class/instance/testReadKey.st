tests - xml reading
testReadKey
	| doc |
	doc := XMLDOMParser parse: '<key>a</key>'.
	self assert: (reader readKey: doc root) equals: 'a'
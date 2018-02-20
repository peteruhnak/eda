tests - xml reading
testReadTheme
	| theme |
	theme := reader readTheme: (XMLDOMParser parse: self sampleThemeXml).
	self assert: theme name equals: 'TestTheme'.
	self assert: theme settings background equals: Color blue.
	self assert: theme rules size equals: 1.
	self assert: theme rules first name equals: 'Comment'.
	self assert: theme rules first settings foreground equals: Color red
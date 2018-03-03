tests - xml reading
testReadDictBasic
	| doc dict |
	doc := XMLDOMParser
		parse:
			'<dict>
				<key>a</key>
				<string>AA</string>
				<key>b</key>
				<string>BB</string>
	</dict>'.
	dict := reader readDict: doc root.
	self
		assert: dict
		equals:
			{'a' -> 'AA'.
			'b' -> 'BB'} asDictionary
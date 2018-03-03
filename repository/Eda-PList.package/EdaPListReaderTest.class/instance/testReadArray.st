tests - xml reading
testReadArray
	| doc array |
	doc := XMLDOMParser
		parse:
			'<array>
				<dict>
					<key>a</key>
					<string>AA</string>
				</dict>
				<dict>
					<key>b</key>
					<string>BB</string>
				</dict>
			</array>'.
	array := reader readArray: doc root.
	self
		assert: array
		equals:
			{{'a' -> 'AA'} asDictionary.
			{'b' -> 'BB'} asDictionary}
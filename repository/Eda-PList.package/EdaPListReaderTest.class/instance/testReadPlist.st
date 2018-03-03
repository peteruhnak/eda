tests - xml reading
testReadPlist
	| doc plist |
	doc := XMLDOMParser
		parse:
			'<plist>
				<dict>
					<key>a</key>
					<string>AA</string>
				</dict>
	</plist>'.
	plist := reader readPlist: doc root.
	self assert: plist equals: {'a' -> 'AA'} asDictionary
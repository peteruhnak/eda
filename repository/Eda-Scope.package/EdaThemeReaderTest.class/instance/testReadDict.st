tests - xml reading
testReadDict
	| doc dict |
	doc := XMLDOMParser
		parse:
			'<dict>
	<key>a</key>
	<string>AA</string>
	<key>b</key>
	<array>
		<dict>
			<key>c</key>
			<string>CC</string>
		</dict>
	</array>
</dict>'.
	dict := reader readDict: doc root.
	self
		assert: dict
		equals:
			{'a' -> 'AA'.
			'b' -> {{'c' -> 'CC'} asDictionary}} asDictionary
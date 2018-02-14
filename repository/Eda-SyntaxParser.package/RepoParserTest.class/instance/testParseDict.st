tests
testParseDict
	| repoParser rule|
	repoParser := RepoParser new.
	rule := repoParser parseDict: (XMLDOMParser parse: '
					<dict>
					<key>match</key>
					<string>\b(test)\b</string>
					<key>name</key>
					<string>storage.type.source.test</string>
</dict>
') root.
	self assert: ((rule scope) = 'storage.type.source.test')
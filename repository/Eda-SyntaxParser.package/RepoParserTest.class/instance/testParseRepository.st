tests
testParseRepository
	| repoParser repo|
	repoParser := RepoParser new.
	repo := repoParser parseRepository: (XMLDOMParser parse: '
				<dict>
					<key>match</key>
					<string>\b(test)\b</string>
					<key>name</key>
					<string>storage.type.source.test</string>
				</dict>
').
	self assert: ((repo rules first scope) = 'storage.type.source.test')
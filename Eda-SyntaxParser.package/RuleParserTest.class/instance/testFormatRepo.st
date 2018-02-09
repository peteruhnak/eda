tests
testFormatRepo
	| ruleParser repo region|
	ruleParser := RuleParser new.
	region := OnigRegion new.
	repo := ruleParser formatRepo: ( 
		XMLDOMParser parse: '
		<dict>
			<key>patterns</key>
			<array>
				<dict>
					<key>match</key>
					<string>\b(test)\b</string>
					<key>name</key>
					<string>storage.type.source.test</string>
				</dict>
			</array>
		</dict>
'  ) root.

self assert: (repo rules first scope) equals: 'storage.type.source.test'.
self assert: (((repo rules first regex) match: 'test' at: 1 region: region) = -1) not.
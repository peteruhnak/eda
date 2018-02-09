tests
testParseCaptures
	| ruleParser captures region |
	ruleParser := RuleParser new.
	captures := ruleParser parseCaptures:( 
		XMLDOMParser parse: '
			<dict>
				<key>1</key>
				<dict>
					<key>name</key>
					<string>keyword.other.using.source.cs</string>
				</dict>
				<key>2</key>
				<dict>
					<key>name</key>
					<string>entity.name.type.package.source.cs</string>
				</dict>
</dict>'  ) root.
self assert: (captures at: '1') equals: 'keyword.other.using.source.cs'
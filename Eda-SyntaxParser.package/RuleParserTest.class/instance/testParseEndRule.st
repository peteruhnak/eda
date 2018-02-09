tests
testParseEndRule
	| ruleParser endRule region |
	ruleParser := RuleParser new.
	endRule := ruleParser parseBeginRule:( 
		XMLDOMParser parse: '		<dict>
			<key>begin</key>
			<string>"</string>
			<key>end</key>
			<string>"</string>
			<key>name</key>
			<string>comment.smalltalk</string>
		</dict>'  ) root.
region := OnigRegion new.
self assert: (((endRule regex) match: '"' at: 1 region: region) = -1) not.

tests
testParseBeginRule
	| ruleParser beginRule region |
	ruleParser := RuleParser new.
	beginRule := ruleParser parseBeginRule:( 
		XMLDOMParser parse: '		<dict>
			<key>begin</key>
			<string>"</string>
			<key>end</key>
			<string>"</string>
			<key>name</key>
			<string>comment.smalltalk</string>
		</dict>'  ) root.
region := OnigRegion new.
self assert: (beginRule scope = 'comment.smalltalk').
self assert: (((beginRule regex) match: '"' at: 1 region: region) = -1) not.
self assert: (((beginRule repository rules first regex) match: '"' at: 1 region: region) = -1) not.

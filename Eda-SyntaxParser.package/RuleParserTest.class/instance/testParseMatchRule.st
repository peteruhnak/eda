tests
testParseMatchRule
	| ruleParser matchRule region |
	ruleParser := RuleParser new.
	matchRule := ruleParser parseMatchRule:( 
		XMLDOMParser parse: '<dict><key>match</key>
			<string>\b(true|false|nil|self|super|thisContext)\b</string>
			<key>name</key>
<string>variable.language.smalltalk</string></dict>'  ) root.
self assert: (matchRule scope = 'variable.language.smalltalk').
region := OnigRegion new.
self assert: (((matchRule regex) match: 'thisContext' at: 1 region: region) = -1) not.
self assert: (((matchRule regex) match: 'true' at: 1 region: region) = -1) not.

reading
readTheme: aDocument
	| theme data rulesData |
	theme := EdaCustomTheme new.
	data := self readDict: aDocument root firstElement.
	theme name: (data at: 'name').
	rulesData := (data at: 'settings') allButFirst.
	theme
		settings: (EdaStyleRuleSettings new settings: ((data at: 'settings') first at: 'settings')).
	theme rules: (rulesData collect: [ :each | self styleRuleFrom: each ]).
	^ theme
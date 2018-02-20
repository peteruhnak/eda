converting
styleRuleFrom: aDictionary
	^ EdaStyleRule new
		name: (aDictionary at: 'name');
		scope: (aDictionary at: 'scope');
		settings: (self styleRuleSettingsFrom: (aDictionary at: 'settings'));
		yourself
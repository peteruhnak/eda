parsing
parseBeginRule: aBeginRuleXML
	| beginRule keys |
	keys := OrderedCollection new.
	(aBeginRuleXML  xpath: 'key') do: [:each | keys add: each stringValue ].
	beginRule := EdaGrBeginRule new.
	beginRule regex: (aBeginRuleXML xpath: 'key[text()="begin"]/following-sibling::node()[2]') stringValue.
	beginRule scope: (aBeginRuleXML xpath: 'key[text()="name"]/following-sibling::node()[2]') stringValue.
	beginRule contentScope: (aBeginRuleXML xpath: 'key[text()="contentName"]/following-sibling::node()[2]') stringValue.
	
	(keys includes: 'captures')
	ifTrue:[beginRule captures: (self parseCaptures:  (aBeginRuleXML xpath: 'key[text()="captures"]/following-sibling::node()[2]') first).].
	(keys includes: 'beginCaptures')
	ifTrue:[beginRule captures: (self parseCaptures:  (aBeginRuleXML xpath: 'key[text()="beginCaptures"]/following-sibling::node()[2]') first).].
	(keys includes: 'patterns')
	ifTrue:[|repoParser| 
		repoParser := RepoParser new.
		repoParser tree: self tree.
		beginRule repository: (repoParser  parseRepository: (aBeginRuleXML xPath: 'key[text()="patterns"]/following-sibling::node()[2]') first). 
		beginRule repository addRuleToBeginning: (self parseEndRule: aBeginRuleXML).
	 ]
	ifFalse:[
		beginRule repository: (Repository createWithRule: (self parseEndRule: aBeginRuleXML))
	].
	
	^ beginRule.

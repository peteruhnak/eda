parsing
parseMatchRule: aMatchRuleXML
	| matchRule keys|
		keys := OrderedCollection new.
	(aMatchRuleXML xpath: 'key') do: [:each | keys add: each stringValue ].
	matchRule := EdaGrMatchRule new.
	matchRule regex: (aMatchRuleXML xpath: 'key[text()="match"]/following-sibling::node()[2]') stringValue.
	matchRule scope: (aMatchRuleXML xpath: 'key[text()="name"]/following-sibling::node()[2]') stringValue.
	(keys includes: 'captures')
	ifTrue: [ 
	matchRule captures: (self parseCaptures: (aMatchRuleXML xpath: 'key[text()="captures"]/following-sibling::node()[2]') first)].
	^ matchRule.

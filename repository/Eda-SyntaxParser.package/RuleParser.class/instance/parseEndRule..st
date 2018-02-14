parsing
parseEndRule: anEndRuleXML
	| endRule keys|	
	keys := OrderedCollection new.
	(anEndRuleXML  xpath: 'key') do: [:each | keys add: each stringValue ].
	endRule := EdaGrEndRule new.
	endRule regex: (anEndRuleXML xpath: 'key[text()="end"]/following-sibling::node()[2]') stringValue.
	(keys includes: 'captures')
	ifTrue:[endRule captures: (self parseCaptures:  (anEndRuleXML xpath: 'key[text()="captures"]/following-sibling::node()[2]') first).].
	(keys includes: 'endCaptures')
	ifTrue:[endRule captures: (self parseCaptures:  (anEndRuleXML xpath: 'key[text()="endCaptures"]/following-sibling::node()[2]') first).].

	^ endRule.

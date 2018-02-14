parsing
parseDict: aDict
	| rule  keys ruleParser|
	keys := OrderedCollection new.
	ruleParser := RuleParser new.
	ruleParser tree: (self tree).
	(aDict xpath: 'key') do: [:each | keys add: each stringValue ].
	(keys includes: 'match')
	ifTrue: [ rule := ruleParser parseMatchRule: aDict ].
	(keys includes: 'begin')
	ifTrue: [ rule := ruleParser parseBeginRule: aDict ].
	(keys includes: 'include')
	ifTrue: [ rule := ruleParser parseIncludeRule: aDict ].
				
	^rule.
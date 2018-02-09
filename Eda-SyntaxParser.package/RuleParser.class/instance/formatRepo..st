private 
formatRepo: repoXML
	| rules repo repoParser keys|
	keys := OrderedCollection new. 
	rules := OrderedCollection new.
	repo := Repository new.
	repoParser := RepoParser new.
	repoParser tree: self tree.
	(repoXML xpath: 'key') do: [:each | keys add: each stringValue].
	(keys includes: 'patterns')
	ifFalse:[
	rules add: (repoParser  parseDict:  repoXML).
	]
	ifTrue:[
		(repoXML xpath: 'key[text()="patterns"]/following-sibling::node()[2]/dict') do: [ :each | rules add: (repoParser parseDict: each ) ] 
		].
	repo rules: rules.

	^ repo.
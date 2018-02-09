private 
parseCaptures: capturesXML
	| captures |
	captures := Dictionary new.
	(capturesXML xpath: 'key') do: [:each | 
		(((each xpath: 'following-sibling::node()[2]/key') stringValue) = 'patterns')
		ifTrue:[ |repoParser|
			repoParser := RepoParser new.
			captures at: (each stringValue) put: (repoParser parseRepository: ((each xpath: 'following-sibling::node()[2]/key/following-sibling::node()[2]') first))] 
		ifFalse:[captures at: (each stringValue) 
		put: (each xpath: 'following-sibling::node()[2]/string') stringValue].
].
	^ captures.

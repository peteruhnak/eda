parsing
parseFile: aFilename
	|tree repoParser|
	tree := XMLDOMParser  parse: (FileLocator imageDirectory / aFilename).
	repoParser := RepoParser new.
	repoParser tree: tree.
	repository := repoParser parseRepository: ((tree) xpath: '/plist/dict/key[text()="patterns"]/following-sibling::node()[2]' ) first.
	^repository.
	
	
	
	
	
	
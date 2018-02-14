parsing
parseFile: aFileReference
	| tree repoParser |
	tree := XMLDOMParser parse: aFileReference.
	repoParser := RepoParser new.
	repoParser tree: tree.
	repository := repoParser
		parseRepository: (tree xpath: '/plist/dict/key[text()="patterns"]/following-sibling::node()[2]') first.
	self
		scope:
			(tree xpath: '/plist/dict/key[text()="scopeName"]/following-sibling::node()[2]') first
				stringValue
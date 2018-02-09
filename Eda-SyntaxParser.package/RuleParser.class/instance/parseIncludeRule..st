parsing
parseIncludeRule: includeRuleXML 
	| includeRule str|
		includeRule := EdaGrIncludeRule new.
		str := (includeRuleXML  xpath: 'string') stringValue.
		((str at: 1) = $#)
		ifTrue:[
			|repoName repoParser|
			repoName := str copyFrom: 2 to: str size.	
			repoParser := RepoParser new. 
			repoParser tree: self tree.
			includeRule repository: (self formatRepo:  (((self tree) xpath: '/plist/dict/key[text()="repository"]/following-sibling::node()[2]/key[text()="', 			repoName ,'"]/following-sibling::node()[2]' ) first) )
		].
	^includeRule
	
	
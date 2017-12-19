initialization
initialize

	super initialize.
	autocomplete := false.
	snippetHandler := SnippetHandler new.
	self loadJson.
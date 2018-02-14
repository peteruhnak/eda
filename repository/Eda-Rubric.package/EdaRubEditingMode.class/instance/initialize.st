initialization
initialize
	super initialize.
	paragraphDecorator := EdaRubParagraphDecorator new.
	autocomplete := false.
	snippetHandler := SnippetHandler new.
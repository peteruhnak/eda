accessing
language: anEdaLanguage
	language := anEdaLanguage.
	self setGrammar: language grammar.
	paragraphDecorator refreshStyling.
	
	self loadJson.
	"aktualizuj snippety?"
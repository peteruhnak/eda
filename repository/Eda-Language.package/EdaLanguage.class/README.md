I represent a language for the EdaEditor.

To define a new language, subclass me a redefine class methods
	#label, the name of the language in the menu
	optional:
	#grammar, which should return EdaGrammar object, containing the languages grammar
	#snippetFile, path to a file containing the snippet definitions
	
accessing
grammar
	| sp |
	sp := SyntaxParser new parseFile: 'Go.tmLanguage'.
	^ sp grammar
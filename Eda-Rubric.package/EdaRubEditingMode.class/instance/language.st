accessing
language
	language ifNil: [ self language: EdaPlainTextLanguage ].
	^ language
accessing
grammar
	^ (SyntaxParser new parseFile: 'D:\tmp\XML.tmLanguage' asFileReference) grammar
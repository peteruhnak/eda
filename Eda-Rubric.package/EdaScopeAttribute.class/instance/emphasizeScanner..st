scanning
emphasizeScanner: aScanner
	(EdaDefaultTheme bestMatchFor: scope) ifNotNil: [ :arr | arr do: [ :attr | attr emphasizeScanner: aScanner ] ]
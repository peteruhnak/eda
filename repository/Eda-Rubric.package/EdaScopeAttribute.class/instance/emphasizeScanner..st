scanning
emphasizeScanner: aScanner
	(EdaTheme current bestMatchFor: scope) ifNotNil: [ :arr | arr do: [ :attr | attr emphasizeScanner: aScanner ] ]
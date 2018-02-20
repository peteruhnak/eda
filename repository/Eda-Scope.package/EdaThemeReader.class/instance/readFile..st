reading
readFile: aFileReference
	^ self readTheme: (XMLDOMParser parse: aFileReference)
reading
readFile: aFileReference
	"todo: validate PList using DTD?"
	^ self readValue: (XMLDOMParser parse: aFileReference) root firstElement
accessing
saveAs: aText
	| fileReference |
	fileReference := self saveFileDialog.
	fileReference ifNotNil: [ 
		fileReference writeStream
			truncate;
			nextPutAll: aText string;
			close.
		currentFileReference := fileReference  ]
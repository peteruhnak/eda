accessing
currentFileReference
	^ currentFileReference ifNil: [  
		currentFileReference := self saveFileDialog
	]
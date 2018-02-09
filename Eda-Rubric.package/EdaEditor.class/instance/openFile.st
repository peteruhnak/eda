accessing
openFile
	"check that the file isn't too big"

	| text |
	text := nil.
	self openFileDialog
		ifNotNil: [ :f | 
			| rs |
			currentFileReference := f.
			rs := f readStream.
			text := Text
				streamContents: [ :outStream | [ rs atEnd ] whileFalse: [ outStream nextPut: rs next ] ] 
			].
	^ text
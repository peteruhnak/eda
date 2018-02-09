accessing
openFileDialog
	^ (Smalltalk ui theme edaFileOpenIn: World title: 'Open') ifNotNil: [ :f | f asFileReference  ]
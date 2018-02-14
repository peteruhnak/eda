tests
sampleFile
	| file |
	file := FileSystem memory root / 'sample.xml'.
	file writeStreamDo: [ :stream | stream << self sampleXml ].
	^ file
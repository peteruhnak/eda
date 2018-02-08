accessing
loadFile: path
	^ (NeoJSONReader fromString: ((StandardFileStream readOnlyFileNamed: path) contents) ).
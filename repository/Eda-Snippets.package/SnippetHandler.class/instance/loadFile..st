accessing
loadFile: path
	^ NeoJSONReader fromString: path asFileReference contents
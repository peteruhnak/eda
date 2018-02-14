tests
sampleDefinitionFile
	| root |
	root := FileSystem memory root.
	root / 'definitions.json'
		writeStreamDo: [ :stream | 
			stream
				<<
					'{
	"snippets" : [
		{
			"name" : "Start Uml",
			"prefix" : "start",
			"body" : "@startuml\n\n@enduml\n"
		}
	]
}' ].
	^ root / 'definitions.json'
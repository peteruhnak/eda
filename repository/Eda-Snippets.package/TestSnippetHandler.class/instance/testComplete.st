tests
testComplete
	| a b |
	a := SnippetHandler new.
	a loadSnippets: self sampleDefinitionFile.
	b := a complete: 'a'.
	self assert: b equals: 'a' , Character tab asString.
	b := a complete: 'aaa'.
	self assert: b equals: 'aaa' , Character tab asString.
	b := a complete: 'start'.
	self
		assert: b
		equals:
			'@startuml

@enduml
' withUnixLineEndings
tests
testComplete

|a b|
a:= SnippetHandler new.
a loadSnippets: FileLocator imageDirectory , '\snippetDefinition.json'.
b:= a complete: 'a'.
self assert: (b = ('a', Character tab asString)).

b:= a complete: 'aaa'.
self assert: (b = ('aaa',Character tab asString )).

b:= a complete: 'start'.
self assert: (b = '@startuml

@enduml
').


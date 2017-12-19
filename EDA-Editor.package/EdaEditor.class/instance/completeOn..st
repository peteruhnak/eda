as yet unclassified
completeOn: anInteger
	"comment stating purpose of message"
	
	|word snippet newText|
	newText := text text asText.
	word := newText asString wordBefore: anInteger.
Transcript show: word; show: Character cr.
	snippet := snippetHandler complete: word.
			
	snippet isNil 
		ifFalse: [ 
			newText replaceFrom: anInteger + 1 - word size to: anInteger with: snippet.
			text setText: newText asString.
			text selectionInterval: (anInteger + 1 + snippet size to: anInteger + snippet size).
			 ]
		ifTrue: [ 
			newText := text text asText.
			newText replaceFrom: anInteger + 1 to: anInteger with: Character tab asString.
			text setText: newText asString.
			text selectionInterval: (anInteger + 2 to: anInteger + 1).
			 ]
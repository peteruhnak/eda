initialization
completeOn: anInteger
	|word snippet newText|
	newText := textArea text asText.
	word := newText asString wordBefore: anInteger.
	Transcript show: word; show: Character cr.
	snippet := snippetHandler complete: word.
	Transcript show: snippet; cr.

	newText replaceFrom: anInteger + 1 - word size to: anInteger with: snippet.
	textArea model setText: newText asString.
	textArea model setPrimarySelectionInterval: (anInteger + 1 + snippet size to: anInteger + snippet size).
	
	textArea forceCompose.
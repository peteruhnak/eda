instance creation
newText
	"comment stating purpose of message"

	text := RubScrolledTextMorph new.
	text textArea removeKeyCombination: 9.
	text textArea on: 9 do: [ 
		self launchSnippet.
		 ].
	text withLineNumbers;
	withAnnotation;
	autoAccept: true.
	^ text
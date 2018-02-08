initialization
launchSnippet
	"comment stating purpose of message"

	| selection |
	selection := textArea selectionInterval.
	(selection first < selection last)
		ifFalse: [ 
			self completeOn: (selection first - 1)
			 ]
as yet unclassified
launchSnippet
	"comment stating purpose of message"

	| selection |
	selection := text selectionInterval.
	(selection first < selection last)
		ifFalse: [ 
			self completeOn: (selection first - 1)
			 ]
	
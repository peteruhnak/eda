private - utilities
openWindowWith: aText
	"comment stating purpose of message"

	| w |
	w := StandardWindow new.
	w title: self title.
	w addMorph: aText fullFrame: (0@0 corner: 1@1) asLayoutFrame.
	^ w
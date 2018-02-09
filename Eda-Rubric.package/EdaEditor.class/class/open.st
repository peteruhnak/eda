instance creation
open
	| window |
	window := StandardWindow new.
	window title: 'Eda test editor'.
	window addMorph: (self new scrolledText) fullFrame: (0@0 corner: 1@1) asLayoutFrame.
	window openInWorld
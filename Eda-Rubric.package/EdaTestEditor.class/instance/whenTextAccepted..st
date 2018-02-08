update
whenTextAccepted: anAnnouncement
	self currentFileReference 
		ifNil: [ 
			"The user was prompted to select a save file,
			 but if they cancelled the prompt, the file reference will still be nil,
			 even though the text was accepted in the editor.
			 We want to unaccept the text, so it's indicated to the user,
			 the changes haven't been saved (orange triangle in the left-top corner).
			 To do this, we need to hold a reference to RubScrolledTextMorph"
			textMorph hasUnacceptedEdits: true.
			]
		ifNotNil: [ :ref |
			ref writeStream
				truncate;
				nextPutAll: anAnnouncement text asString;
				close
			]
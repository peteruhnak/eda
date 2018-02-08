initialize-release
updateTextAreaWhenUnplugged
	self textArea withoutDecorator: paragraphDecorator.
	super updateTextAreaWhenUnplugged

	
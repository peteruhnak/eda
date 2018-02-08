initialize-release
updateTextAreaWhenPlugged
 "use the same mechanism as RubSmallTalkMode, which checks the whole chain.... just for now"
	self textArea withDecorator: paragraphDecorator.
	super updateTextAreaWhenPlugged.
	self initializeKeyCombinations.
	
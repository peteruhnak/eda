initialization
initialize
	| editingMode |
	super initialize.
	textModel := RubScrolledTextModel new
		interactionModel: self;
		yourself.
	
	editingMode := EdaRubEditingMode new.
	
	textMorph := self newScrolledText: editingMode.
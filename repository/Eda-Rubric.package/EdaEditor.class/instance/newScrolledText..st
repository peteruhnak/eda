initialization
newScrolledText: editingMode
	| text |
	text := textModel newScrolledText 
		beWrapped; 
		autoAccept: true;
		withLineNumbers;
		editingMode: editingMode; "it is important this is set before edaAnnotation"
		withRulerNamed: #edaAnnotation;
		autoAccept: false;
		yourself.
	text announcer when: RubTextAccepted send: #whenTextAccepted: to: self.
	^ text

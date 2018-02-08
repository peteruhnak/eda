event handling
updateContents
	| t |
	row ifNil: [ ^self ].
	self textArea selectionStart ifNil: [ ^self ].
	self lines ifNil: [ ^self ].
	t := self textOfCharBlock: self textArea selectionStart.
	self textArea selectionStop ~= self textArea selectionStart
		ifTrue: [ t := t , ' -- ' , (self textOfCharBlock: self textArea selectionStop) ].
	lineAnnotation
		beEditableWhile: [ 
			lineAnnotation setTextWith: t.
			self layoutChanged ].
	wrappingPolicyMorph contents: self wrappingPolicyLabel.
	tabWidthMorph contents: self tabWidthLabel.
	columnDisplayMorph contents: self columnDisplayLabel.
	lineNumbersDisplayMorph contents: self lineNumbersDisplayLabel.
	languageMorph contents: self languageLabel.
	row position: self innerBounds topLeft.
	row width: self innerBounds width
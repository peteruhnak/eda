submorphs-accessing
noteNewOwner: aMorph
	super noteNewOwner: aMorph.
	self color: self backgroundColor.
	lineAnnotation := RubTextFieldArea new.
	lineAnnotation withoutAnyDecorator.
	lineAnnotation backgroundColor: Color transparent.
	lineAnnotation font: self fontToUse.
	lineAnnotation beReadOnly.
	lineAnnotation textColor: self textColor.
	wrappingPolicyMorph := self wrappingPolicyLabelMorph.
	tabWidthMorph := self tabWidthLabelMorph.
	columnDisplayMorph := self columnDisplayLabelMorph.
	lineNumbersDisplayMorph := self lineNumbersDisplayLabelMorph.
	languageMorph := self languageLabelMorph.
	row := self theme
		newRowIn: self
		for:
			{(self spacer: 2).
			lineAnnotation.
			(self spacer: 2).
			tabWidthMorph.
			(self spacer: 2).
			languageMorph.
			(self spacer: 2).
			wrappingPolicyMorph.
			(self spacer: 2).
			lineNumbersDisplayMorph.
			(self spacer: 2).
			columnDisplayMorph.
			(self spacer: 2)}.
	wrappingPolicyMorph on: #mouseDown send: #changeWrappingPolicy to: self.
	tabWidthMorph on: #mouseDown send: #chooseTabWidth: to: self.
	columnDisplayMorph on: #mouseDown send: #changeColumnDisplay to: self.
	lineNumbersDisplayMorph on: #mouseDown send: #changeLineNumbersDisplay to: self.
	languageMorph on: #mouseDown send: #chooseLanguage: to: self.
	row color: Color transparent.
	row hResizing: #spaceFill.
	lineAnnotation hResizing: #spaceFill.
	self addMorph: row
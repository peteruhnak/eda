*Eda-Rubric
edaFileOpenIn: aThemedMorph title: title
	"Answer the result of a file open dialog with the given title, extensions path and preview type."

	|fd|
	fd := FileDialogWindow basicNew
		basicTheme: aThemedMorph theme;
		initialize;
		title: title;
		answerFileEntry.
	^(aThemedMorph openModal: fd) answer
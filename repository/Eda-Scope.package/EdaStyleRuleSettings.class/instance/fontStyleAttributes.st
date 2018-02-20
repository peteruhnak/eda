accessing
fontStyleAttributes
	^ self settings
		at: 'fontStyle'
		ifPresent: [ :values | 
			| styleNames styles map |
			map := {'underline' -> TextEmphasis underlined.
			'italic' -> TextEmphasis italic.
			'bold' -> TextEmphasis bold} asDictionary.
			styleNames := ((values splitOn: ' ') collect: #trimBoth) reject: #isEmpty.
			styleNames collect: [ :each | map at: each ] ]
		ifAbsent: [ #() ]
private
stylerStyledInBackground: styledCopyOfText
	text ifNil: [ ^self ].
	self stylerStyled: styledCopyOfText.

accessing
colorAttributes
	^ Array
		<< [ :stream | 
			(settings includesKey: 'foreground')
				ifTrue: [ stream << (TextColor color: self foreground) ] ]
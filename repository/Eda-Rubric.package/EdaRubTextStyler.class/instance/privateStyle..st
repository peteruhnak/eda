private
privateStyle: aText
	| parseResult parser |
	grammar ifNil: [ ^ aText ].
	text := self unstyledTextFrom: aText.
	parser := grammar newParser.
	parseResult := parser parse: aText string.
	parseResult
		do: [ :match | 
			text
				addAttribute:
					(EdaScopeAttribute
						from:
							(EdaSortedScope from: {EdaScopeExtentNode from: match scope begin: match beg end: match end}))
				from: match beg
				to: match end ].
	^ text
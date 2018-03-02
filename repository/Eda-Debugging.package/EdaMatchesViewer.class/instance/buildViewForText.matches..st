building
buildViewForText: aText matches: matches
	| ranges rowsCount columnsCount content scopes colorWheel colors cellSize cells container |
	ranges := matches collect: [ :each | { each beg. each end. each scope} ].
"	ranges := #(#(1 13 'text.tabular.csv') #(3 3 'punctuation.separator.tabular.field.csv') #(4 6 '') #(4 5 'meta.tabular.field.csv') #(7 11 '') #(8 9 'meta.tabular.field.quoted.csv') #(12 13 '') #(12 13 'meta.tabular.field.csv'))."

	"index header + index footer + text line + ranges size"
	rowsCount := 1 + 1 + 1 + ranges size.

	"text size + side info"
	columnsCount := aText size + 3.
	content := Matrix rows: rowsCount columns: columnsCount element: ''.

	"index header and footer"
	1 to: (columnsCount min: aText size) do: [ :x | 
		content at: 1 at: x put: x asString.
		content at: rowsCount at: x put: x asString ].

	"text line"
	aText withIndexDo: [ :c :i | content at: 2 at: i put: c asString ].

	"matches"
	ranges
		withIndexDo: [ :each :y | 
			"I store the match, string content, and number of cells that will be merged"
			content
				at: y + 2
				at: each first
				put:
					{each.
					'^' , y asString.
					each second - each first + 1}.
			each first + 1 to: each second do: [ :x | "cells that should be merged will be nil" content at: y + 2 at: x put: nil ].
			content at: y + 2 at: aText size + 2 put: '^' , y asString.
			content at: y + 2 at: aText size + 3 put: each last ].
	scopes := (ranges collect: #last) asSet.
	colorWheel := Color wheel: scopes size.
	colors := (scopes asArray withIndexCollect: [ :each :i | each -> (colorWheel at: i) ])
		asDictionary.
	cellSize := 20.
	cells := Matrix
		rows: content rowCount
		columns: content columnCount
		tabulate: [ :y :x | 
			"don't create Elements for cell positions that will be merged"
			(content at: y at: x)
				ifNil: [ nil ]
				ifNotNil: [ :cellData | 
					| cellText span color e |
					cellText := cellData.
					span := 1.
					color := Color white.
					cellData isArray
						ifTrue: [ cellText := cellData second.
							span := cellData last.
							color := colors at: cellData first last ].
					e := BlElement new
						layout: BlFrameLayout new;
						height: cellSize;
						background: color;
						constraintsDo:
								[ :c | "occupy `span` many cells *horizontally* (colspan)" c grid horizontal span: span ].
					"1 extra pixel for the border between each pair of merged cells"
					e width: (cellSize + 1) * span - 1.
					e
						addChild:
							(BlTextElement new
								constraintsDo: [ :c | 
									c frame vertical alignCenter.
									c frame horizontal alignCenter ];
								text: cellText asRopedText).
					e ] ].

	"adjust the width & alignment of the last column"
	(cells atColumn: columnsCount)
		do: [ :each | 
			each width: 15 * cellSize.
			each children first constraintsDo: [ :c | c frame horizontal alignLeft ] ].
	container := BlElement new
		layout:
			(BlGridLayout new
				columnCount: cells columnCount;
				cellSpacing: 1);
		constraintsDo: [ :c | 
			c horizontal fitContent.
			c vertical fitContent ];
		background: Color veryLightGray.
	cells do: [ :each | each ifNotNil: [ container addChild: each ] ].
	^ container
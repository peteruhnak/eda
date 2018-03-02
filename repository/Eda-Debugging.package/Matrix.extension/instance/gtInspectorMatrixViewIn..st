*Eda-Debugging
gtInspectorMatrixViewIn: aComposite
	<gtInspectorPresentationOrder: 10>
	^ aComposite bloc
		title: 'Matrix' translated;
		element: [ | cells container |
			cells := Matrix
				rows: self rowCount
				columns: self columnCount
				tabulate: [ :y :x | 
					| e |
					e := BlElement new.
					e size: 25 @ 25.
					e layout: BlFrameLayout new.
					e background: Color white.
					e
						addChild:
							(BlTextElement new
								constraintsDo: [ :c | 
									c frame vertical alignCenter.
									c frame horizontal alignCenter ];
								text: (self at: y at: x) asString asRopedText).
					e ].
			cells do: #forceLayout.
			1 to: cells columnCount do: [ :x | 
				| column width |
				column := cells atColumn: x.
				width := 25 max: (column collect: [ :each | each children first width ]) max.
				column do: [ :each | each width: width ] ].
			container := BlElement new
				layout:
					(BlGridLayout new
						columnCount: cells columnCount;
						cellSpacing: 1);
				constraintsDo: [ :c | 
					c horizontal fitContent.
					c vertical fitContent ];
				background: Color veryLightGray.
			cells do: [ :each | container addChild: each ].
			container ]
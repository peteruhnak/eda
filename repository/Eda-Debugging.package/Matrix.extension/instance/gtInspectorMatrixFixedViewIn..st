*Eda-Debugging
gtInspectorMatrixFixedViewIn: aComposite
	<gtInspectorPresentationOrder: 10>
	^ aComposite bloc
		title: 'Matrix (fixed)' translated;
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
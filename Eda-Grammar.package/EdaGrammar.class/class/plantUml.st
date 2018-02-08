as yet unclassified
plantUml
	| main beginRepo |
	main := EdaGrRepository new.
	beginRepo := EdaGrRepository new.
	beginRepo
		add: (EdaGrEndRule new 
					regex: '\n';
					yourself).
	main 
		add: (EdaGrBeginRule new
					regex: '''';
					scope: 'comment.line.plantuml';
					repository: beginRepo;
					yourself).
	beginRepo := EdaGrRepository new.
	beginRepo
		add: (EdaGrEndRule new
					regex: '/''';
					yourself).
	main 
		add: (EdaGrBeginRule new 
					regex: '''/';
					scope: 'comment.block.plantuml';
					captures: (Dictionary newFromPairs: { 0 . 'comment.line.plantuml' });
					repository: beginRepo).
					
	main
		add: (EdaGrMatchRule new
					regex: '\\b(abstract|actor|class|component|enum|interface|object|participant|state|usecase)\\b';
					scope: 'support.function.plantuml';
					yourself).
	
	beginRepo := EdaGrRepository new.
	beginRepo
		add: (EdaGrEndRule new
					regex: '\n';
					yourself).
	main 
		add: (EdaGrBeginRule new 
					regex: '\btitle\b';
					scope: 'string.quoted.double.plantuml';
					captures: (Dictionary newFromPairs: { 0 . 'keyword.control.plantuml' });
					repository: beginRepo).
	
	main
		add: (EdaGrMatchRule new
					regex: '\b(@enduml|@startuml|activate|again|also|alt|as|autonumber|bottom|box|break|center|create|critical|deactivate|destroy|down|else|end|endif|endwhile|footbox|footer|fork|group|header|hide|if|is|left|link|loop|namespace|newpage|note|of|on|opt|over|package|page|par|partition|ref|repeat|return|right|rotate|show|skin|skinparam|start|stop|title|top|top to bottom direction|up|while)\b';
					scope: 'keyword.control.plantuml';
					yourself).
					
	main
		add: (EdaGrMatchRule new
					regex: '\b(AliceBlue|AntiqueWhite|Aqua|Aquamarine|Azure|Beige|Bisque|Black|BlanchedAlmond|Blue|BlueViolet|Brown|BurlyWood|CadetBlue|Chartreuse|Chocolate|Coral|CornflowerBlue|Cornsilk|Crimson|Cyan|DarkBlue|DarkCyan|DarkGoldenRod|DarkGray|DarkGreen|DarkGrey|DarkKhaki|DarkMagenta|DarkOliveGreen|DarkOrchid|DarkRed|DarkSalmon|DarkSeaGreen|DarkSlateBlue|DarkSlateGray|DarkSlateGrey|DarkTurquoise|DarkViolet|Darkorange|DeepPink|DeepSkyBlue|DimGray|DimGrey|DodgerBlue|FireBrick|FloralWhite|ForestGreen|Fuchsia|Gainsboro|GhostWhite|Gold|GoldenRod|Gray|Green|GreenYellow|Grey|HoneyDew|HotPink|IndianRed|Indigo|Ivory|Khaki|Lavender|LavenderBlush|LawnGreen|LemonChiffon|LightBlue|LightCoral|LightCyan|LightGoldenRodYellow|LightGray|LightGreen|LightGrey|LightPink|LightSalmon|LightSeaGreen|LightSkyBlue|LightSlateGray|LightSlateGrey|LightSteelBlue|LightYellow|Lime|LimeGreen|Linen|Magenta|Maroon|MediumAquaMarine|MediumBlue|MediumOrchid|MediumPurple|MediumSeaGreen|MediumSlateBlue|MediumSpringGreen|MediumTurquoise|MediumVioletRed|MidnightBlue|MintCream|MistyRose|Moccasin|NavajoWhite|Navy|OldLace|Olive|OliveDrab|Orange|OrangeRed|Orchid|PaleGoldenRod|PaleGreen|PaleTurquoise|PaleVioletRed|PapayaWhip|PeachPuff|Peru|Pink|Plum|PowderBlue|Purple|Red|RosyBrown|RoyalBlue|SaddleBrown|Salmon|SandyBrown|SeaGreen|SeaShell|Sienna|Silver|SkyBlue|SlateBlue|SlateGray|SlateGrey|Snow|SpringGreen|SteelBlue|Tan|Teal|Thistle|Tomato|Turquoise|Violet|Wheat|White|WhiteSmoke|Yellow|YellowGreen)\b';
					scope: 'variable.plantuml';
					yourself).
	
	beginRepo := EdaGrRepository new.
	beginRepo
		add: (EdaGrEndRule new
					regex: '\n';
					yourself).
	main 
		add: (EdaGrBeginRule new 
					regex: '\btitle\b';
					scope: 'string.quoted.double.plantuml';
					captures: (Dictionary newFromPairs: { 0 . 'keyword.control.plantuml' });
					repository: beginRepo).

					
	
	^ self new 
		repository: main;
		scope: 'source.plantuml';
		yourself
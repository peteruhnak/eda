as yet unclassified
smalltalk
	| main beginRepo |
	main := EdaGrRepository new.
	main
		add: (EdaGrMatchRule new
					regex: '\b(true|false|nil|self|super|thisContext)\b';
					scope: 'variable.language.smalltalk';
					yourself);
		add: (EdaGrMatchRule new
					regex: '(\:\=)';
					scope: 'keyword.operator.assignment.smalltalk';
					yourself).
	beginRepo := EdaGrRepository new.
	beginRepo
		add: (EdaGrEndRule new 
					regex: '"';
					yourself).
	main 
		add: (EdaGrBeginRule new
					regex: '"';
					scope: 'comment.smalltalk';
					repository: beginRepo;
					yourself).
	beginRepo := EdaGrRepository new.
	beginRepo
		add: (EdaGrEndRule new
					regex: '''';
					yourself).
	main 
		add: (EdaGrBeginRule new 
					regex: '''';
					scope: 'string.smalltalk';
					repository: beginRepo).
					
	^ self new 
		repository: main;
		scope: 'source.smalltalk';
		yourself
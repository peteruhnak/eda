instance creation
newParser
	^ EdaGrParser new
		rootRule: (EdaGrIncludeRule from: repository);
		rootScope: scope;
		yourself	
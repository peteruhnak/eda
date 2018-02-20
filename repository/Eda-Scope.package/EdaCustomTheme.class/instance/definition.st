accessing
definition
	^ rules
		flatCollect: [ :each | 
			{each scopes.
			each textAttributes} ]
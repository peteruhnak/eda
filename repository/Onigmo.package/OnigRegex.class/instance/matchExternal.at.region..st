as yet unclassified
matchExternal: extStr at: anIndex region: anOnigRegion
	^ self onigMatchStrStart: extStr startPtr 
	       strEnd: extStr endPtr
	       at: (extStr indexPtr: anIndex)
	       region: anOnigRegion 
			 option: 0
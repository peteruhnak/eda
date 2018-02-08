as yet unclassified
match: aString at: anIndex region: anOnigRegion
	| extStr |
	extStr := OnigExternalString from: aString.
	^ self onigMatchStrStart: extStr startPtr 
	       strEnd: extStr endPtr
	       at: (extStr indexPtr: anIndex)
	       region: anOnigRegion 
			 option: 0
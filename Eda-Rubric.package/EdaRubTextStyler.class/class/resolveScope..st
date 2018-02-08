as yet unclassified
resolveScope: aScope
	^ scopeDict at: aScope ifAbsent: [ ^ Color white ]
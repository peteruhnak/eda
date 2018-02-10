visiting
visitBeginRule: beginRule
	| onigRegion matchedCount scopeMatch contentScopeMatch |
	onigRegion := OnigRegion new.
	onigRegion autoRelease.
	matchedCount := beginRule regex matchExternal: extStr at: index region: onigRegion.
	(matchedCount = -1) ifTrue: [ ^ self ]. "nothing matched, move on"
	"add Matches representing the whole begin-end"
	"however at this moment, we don't know how long the match will be.
		- EdaGrBeginEndContext solves this"
	beginRule scope ifNotNil: [  
		scopeMatch := EdaGrMatch beg: index end: string size scope: beginRule scope.
		resultList 
			add: scopeMatch ].
	beginRule contentScope ifNotNil: [
		contentScopeMatch := EdaGrMatch beg: index + matchedCount end: string size scope: beginRule contentScope.
		resultList	
			add: contentScopeMatch ].
	contextStack push: (EdaGrBeginEndContext match: scopeMatch contentMatch: contentScopeMatch include: (EdaGrIncludeRule from: beginRule repository)).
	"now captures"
	beginRule captures ifNotNil: [ 
	onigRegion matchesDoWithIndex: [ :beg :end :idx |
		beginRule captures
			at: idx
			ifPresent: [ :scope |
				resultList add: (EdaGrMatch beg: beg end: end scope: scope) ] ] ].
	index := index + matchedCount.
	keepMatching := false.
	
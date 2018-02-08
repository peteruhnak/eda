visiting
visitEndRule: endRule
	| onigRegion matchedCount |
	onigRegion := OnigRegion new.
	matchedCount := endRule regex matchExternal: extStr at: index region: onigRegion.
	(matchedCount = -1) ifTrue: [ ^ self ]. "nothing matched, move on"
	"now captures"
	(endRule captures isNotNil) ifTrue: [ 
	onigRegion matchesDoWithIndex: [ :beg :end :idx |
		endRule captures
			at: idx
			ifPresent: [ :scope |
				resultList add: (EdaGrMatch beg: beg end: end scope: scope) ] ] ].
	"now deal with the corresponding EdaGrBeginEndContext"
	contextStack top contentMatch ifNotNil: [ :match | match end: index - 1 ].
	contextStack top match ifNotNil: [ :match | match end: index + matchedCount - 1 ].
	contextStack pop.
	index := index + matchedCount.
	keepMatching := false.
	
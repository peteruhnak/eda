visiting
visitMatchRule: matchRule
	| onigRegion matchedCount |
	onigRegion := OnigRegion new.
	onigRegion autoRelease.
	matchedCount := matchRule regex matchExternal: extStr at: index region: onigRegion.
	(matchedCount = -1) ifTrue: [ ^ self ]. "nothing matched, move on"
	"add a Match representing the whole match"
	onigRegion matchAt: 0 do: [ :beg :end |
		resultList add: (EdaGrMatch beg: beg end: end scope: matchRule scope) ].
	"now captures"
	matchRule captures ifNotNil: [ 
	onigRegion matchesDoWithIndex: [ :beg :end :idx |
		matchRule captures
			at: idx
			ifPresent: [ :scope |
				resultList add: (EdaGrMatch beg: beg end: end scope: scope) ] ] ].
	index := index + matchedCount.
	keepMatching := false.
	
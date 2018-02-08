tests
testEmptyStringRegex
	| regex region |
	regex := OnigRegex from: ''.
	region := OnigRegion new.
	regex match: '' at: 1 region: region.
	region matchAt: 0 do: [ :beg :end | 
		self assert: beg equals: 1.
		self assert: end equals: 0. ].
	self assert: region num_regs equals: 1
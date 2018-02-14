tests
testRegex
	| regex region |
	regex := OnigRegex from: '(mo)(jo)'.
	region := OnigRegion new.
	regex match: 'mojo' at: 1 region: region.
	region matchAt: 0 do: [ :beg :end | 
		self assert: beg equals: 1.
		self assert: end equals: 4. ].
	region matchAt: 1 do: [ :beg :end | 
		self assert: beg equals: 1.
		self assert: end equals: 2. ].
	region matchAt: 2 do: [ :beg :end | 
		self assert: beg equals: 3.
		self assert: end equals: 4. ].
	self assert: region num_regs equals: 3
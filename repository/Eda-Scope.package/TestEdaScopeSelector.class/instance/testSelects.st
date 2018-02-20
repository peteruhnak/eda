tests
testSelects
	| selector1 selector2 selector3 emptySelector badSelector 
	  rank1     rank2     rank3     emptyRank     badRank scope |
	selector1 := EdaScopeSelector from: { 'b'. ' ' . 'd.e' }.
	selector2 := EdaScopeSelector from: { 'b.c' . 'd' }.
	selector3 := EdaScopeSelector from: { 'b' . 'd' }.
	emptySelector := EdaScopeSelector from: { '' }.
	badSelector := EdaScopeSelector from: { 'a.x' . 'b.c' . 'd.e.f' }.
	scope := EdaArrayScope from: { 'a'. 'b.c'. 'd.e.f' }.
	
	rank1 := selector1 selects: scope.
	rank2 := selector2 selects: scope.
	rank3 := selector3 selects: scope.
	emptyRank := emptySelector selects: scope.
	badRank := badSelector selects: scope.
	1halt.
	
	self assert: rank1 > rank2.
	self assert: rank2 > rank3.
	self assert: rank3 > emptyRank.
	self assert: emptyRank > badRank.
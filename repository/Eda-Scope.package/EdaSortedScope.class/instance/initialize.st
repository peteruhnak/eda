initialization
initialize
	nodes := SortedCollection sortBlock: [ :a :b | a isDescendantOf: b ]
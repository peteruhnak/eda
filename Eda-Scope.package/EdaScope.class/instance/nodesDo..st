enumerating
nodesDo: aBlock
	"evaluates aBlock for each node, going from the deepest up the hierarchy
	 eg. descendant -> ancestor"
	self subclassResponsibility 
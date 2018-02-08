testing
isDescendantOf: otherNode
	"answer whether in the context of the scope tree, this node is a descendant of other node
	 eg. a node with extent 2-3 is a descendant of a node with extenr 1-5, but not vice versa"
	
	^ (begin >= otherNode begin) & (end <= otherNode end)
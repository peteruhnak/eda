instance creation
from: anArray
	"creates a Selector from an array of strings (scope names).
	 { 'source' . 'string.quoted.single' }
	 the order matters, ancestors -> descendants"

	^ self new
		nodes:
			(anArray
				collect: [ :each | EdaScopeNode from: each ]
				thenSelect: [ :each | each numberOfAtoms ~= 0 ]);
		yourself
instance creation
from: anArray
	^ self new
		nodes:
			(anArray
				collect: [ :each | EdaScopeNode from: each ]
				thenSelect: [ :each | each numberOfAtoms ~= 0 ]);
		yourself
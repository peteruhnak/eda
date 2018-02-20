instance creation
newSelectorDictionaryFrom: anArray
	1 to: anArray size - 1 by: 2 do: [ :i | 
		anArray at: i put: (EdaScopeSelector from: (anArray at: i)) ].
	^ Dictionary newFromPairs: anArray
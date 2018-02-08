instance creation
from: aString scope: aScope capturePairs: anArray
	^ self new
		regex: aString;
		scope: aScope;
		captures: (Dictionary newFromPairs: anArray);
		yourself
instance creation
from: aString capturePairs: anArray
	^ self new
		regex: aString;
		captures: (Dictionary newFromPairs: anArray);
		yourself
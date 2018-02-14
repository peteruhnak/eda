instance creation
from: aString scope: aScope contentScope: contentScope capturePairs: anArray repository: aRepo
	^ self new
		regex: aString;
		scope: aScope;
		contentScope: contentScope;
		captures: (Dictionary newFromPairs: anArray);
		repository: aRepo;
		yourself
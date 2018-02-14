instance creation
from: anArray
	| retval |
	retval := self new.
	retval nodes addAll: anArray.
	^ retval
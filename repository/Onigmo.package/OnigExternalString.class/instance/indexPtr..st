accessing
indexPtr: anIndex
	"only works for ByteStrings for now"
	^ buffer + (anIndex - 1)
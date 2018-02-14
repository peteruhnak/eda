instance creation
ascii
	^ self fromHandle: (ExternalAddress loadSymbol: 'OnigEncodingASCII' from: OnigLibrary)
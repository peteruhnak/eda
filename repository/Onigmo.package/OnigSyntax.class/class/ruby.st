instance creation
ruby
	^ self fromHandle: (ExternalAddress loadSymbol: 'OnigSyntaxRuby' from: OnigLibrary)
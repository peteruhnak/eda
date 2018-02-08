instance creation
from: aString
	| instance |
	instance := self new buffer: ((ExternalAddress allocate: aString byteSize) autoRelease); string: aString.
	instance string bytesDoWithIndex: [ :byte :index | instance buffer byteAt: index put: byte ].
	^ instance

	
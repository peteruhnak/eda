*Onigmo
bytesDoWithIndex: aBlock
	1 to: self byteSize do: 
		[ :index | aBlock value: (self byteAt: index) value: index ] 
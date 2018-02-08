accessing structure variables
beg
	^ FFIExternalArray 
		fromHandle: (handle pointerAt: OFFSET_BEG)
		type: OnigPosition
		size: self num_regs
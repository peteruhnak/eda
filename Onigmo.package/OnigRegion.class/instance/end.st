accessing structure variables
end
	^ FFIExternalArray 
		fromHandle: (handle pointerAt: OFFSET_END)
		type: OnigPosition
		size: self num_regs
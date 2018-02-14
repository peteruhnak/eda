enumerating
matchAt: index do: aBlock
	"evaluates a block for a match at given index
		-- matches are indexed from 0! (0 represents the whole match)
		-- indexes into matched the string are converted to pharo indexes
		-- if a match at such index doesn't exist
			(for example when the regular exception didn't match anything),
			nothing happens"
			
	self assert: (index >= 0) & (index < self num_regs) description: 'match subscription out of bounds'.
	((self beg at: index + 1) = -1)
		ifFalse: [ 
			aBlock 
				value: (self beg at: index + 1) + 1
				value: (self end at: index + 1) ]
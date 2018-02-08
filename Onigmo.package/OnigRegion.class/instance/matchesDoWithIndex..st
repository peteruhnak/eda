accessing structure variables
matchesDoWithIndex: aBlock
	"executes a block with the indices of groups that matched (eg. the groups whose beg and end indices aren't -1) and with the index of the group(0 being the whole match)
	
	ex, [ :beg :end :idx | ... ]
	
	beg and end are converted to pharo's indexes
	- here they start from 0 and are [beg, end)
	- we want them to start from 1 and be [beg, end] so we are consistent with rest of pharo
	
	capture group indexes, however, start from 0 - as 0 means the whole match"
	0 to: self num_regs - 1 do: [ :index |
		self matchAt: index do: [ :beg :end | aBlock value: beg value: end value: index ] ]
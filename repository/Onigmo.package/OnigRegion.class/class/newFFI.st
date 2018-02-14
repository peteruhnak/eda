private
newFFI
	^ self ffiCall: #( OnigRegion* onig_region_new(void) ) module: OnigLibrary
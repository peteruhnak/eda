private
free: aHandle
	self ffiCall: #( void onig_region_free(ExternalAddress* aHandle, 1) ) module: OnigLibrary 
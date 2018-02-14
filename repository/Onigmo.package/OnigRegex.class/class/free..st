private
free: aHandle
  self ffiCall: #( void onig_free(ExternalAddress* aHandle) ) module: OnigLibrary 
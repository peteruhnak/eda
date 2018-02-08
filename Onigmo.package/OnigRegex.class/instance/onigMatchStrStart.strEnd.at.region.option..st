private
onigMatchStrStart: startPtr strEnd: endPtr at: atPtr region: anOnigRegion option: options
	^ self ffiCall: 
		#( OnigPosition onig_match(OnigRegex* self,
										  ExternalAddress startPtr,
										  ExternalAddress endPtr,
										  ExternalAddress atPtr,
										  OnigRegion* anOnigRegion,
										  int options) )
		    module: OnigLibrary
private
onigNew: anOnigRegex patternStart: patternStart patternEnd: patternEnd options: options encoding: anOnigEncoding syntax: anOnigSyntax errorInfo: einfo
	
	^ self ffiCall: #(int onig_new(OnigRegex** anOnigRegex, 
											ExternalAddress* patternStart,
										   ExternalAddress* patternEnd,
										   int options, 
										   OnigEncoding* anOnigEncoding,
										   OnigSyntax* anOnigSyntax,
										   ExternalAddress* einfo))
			 module: OnigLibrary
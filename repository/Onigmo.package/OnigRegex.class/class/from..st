instance creation
from: aString
	"creates a new regex with aString as the pattern"
	| extStr onigRegex |
	self assert: aString isNotNil.
	
	extStr := OnigExternalString from: aString.
	onigRegex := OnigRegex new.
	self 	onigNew: onigRegex 
			patternStart: extStr startPtr
			patternEnd: extStr endPtr
			options: 0 
			encoding: OnigEncoding ascii
			syntax: OnigSyntax default
			errorInfo: ExternalAddress null.
	onigRegex autoRelease.
	^ onigRegex
	
	
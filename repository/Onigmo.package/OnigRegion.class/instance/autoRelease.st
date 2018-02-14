external resource management
autoRelease
	"we need to call an Onigmo function to completely free OnigRegion. Use the same technique as FFIExternalReference to achieve this. (without this, it would just free the handle, but the subfields of the structure would not get freed"
	FFIExternalResourceManager addResource: self
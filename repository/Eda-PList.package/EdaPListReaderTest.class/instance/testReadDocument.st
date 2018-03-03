tests - xml reading
testReadDocument
	| doc dict |
	doc := XMLDOMParser
		parse:
			'<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict><key>a</key><string>AA</string></dict>
</plist>'.
	dict := reader readDocument: doc.
	self assert: dict equals: {'a' -> 'AA'} asDictionary
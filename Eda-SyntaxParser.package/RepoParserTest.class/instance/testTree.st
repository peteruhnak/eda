tests
testTree
	| repoParser  |
	repoParser := RepoParser new.
	repoParser tree: (XMLDOMParser parse: '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<string>Smalltalk</string>
</plist>
' ).
self assert: (repoParser tree root isNamed: 'plist').
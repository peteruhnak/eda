tests
testTree
	| ruleParser |
	ruleParser := RuleParser new.
	ruleParser tree: (XMLDOMParser parse: '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<string>Smalltalk</string>
</plist>
' ).
self assert: (ruleParser tree root isNamed: 'plist').
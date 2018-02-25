gtInspectorExtensions
treeViewChildren
	^ self repository
		ifNil: [ { } ]
		ifNotNil: [ :r | { r } ]
gtInspectorExtensions
treeViewChildren
	^ repository 
		ifNil: [ { } ] 
		ifNotNil: [ :r | r rules ]
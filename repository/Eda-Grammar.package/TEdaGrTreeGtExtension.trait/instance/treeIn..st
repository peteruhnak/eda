gtInspectorExtensions
treeIn: aComposite
	aComposite tree
		title: 'Tree';
		display: [ {self} ];
		children: [ :each | each treeViewChildren ];
		format: [ :each | each treeViewLabelText ]
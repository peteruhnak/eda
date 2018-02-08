menu
menuOn: aBuilder

	<EdaEditorMenu>
	(aBuilder item: #'Open file' translated)
						selector: #openFile.
	(aBuilder item: #Save translated)
						keyText: 's';
						selector: #accept;
						iconName: #smallOkIcon.
	(aBuilder item: #'Save as ...' translated)
						selector: #saveAs.
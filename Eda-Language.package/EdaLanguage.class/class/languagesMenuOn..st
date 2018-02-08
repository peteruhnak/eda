as yet unclassified
languagesMenuOn: aBuilder
	<EdaLanguageMenu>
	self allSubclassesDo: [ :subclass | 
		(aBuilder item: subclass label)
			action: [ :model | model textArea editingMode language: subclass] ]
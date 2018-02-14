settings
settingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #Onigmo)
		parent: #tools.
	
	(aBuilder setting: #modulePath)
		parent: #Onigmo;
		target: self;
		type: #FilePathEncoder;
		label: 'Path';
		description: 'A path to your Onigmo shared library binary'
	
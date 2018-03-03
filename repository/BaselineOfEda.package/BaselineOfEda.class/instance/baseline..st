baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Bloc'
				with: [ spec
						repository: 'github://pharo-graphics/Bloc/src';
						loads: #(core) ].
			spec
				project: 'NeoJSON'
				with: [ spec
						className: 'ConfigurationOfNeoJSON';
						repository: 'http://mc.stfx.eu/Neo';
						version: #stable ].
			spec
				baseline: 'Onigmo'
				with: [ spec repository: 'github://peteruhnak/Onigmo/repository' ].
			spec
				project: 'XMLParser'
				with: [ spec
						className: #ConfigurationOfXMLParser;
						versionString: #stable;
						loads: #(CoreWithWriting);
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLParser/main/' ].
			spec
				project: 'XPath'
				with: [ spec
						className: #ConfigurationOfXPath;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XPath/main/' ].
			spec package: 'Eda-Debugging' with: [ spec requires: 'Bloc' ].
			spec package: 'Eda-Grammar' with: [ spec requires: #('Onigmo') ].
			spec
				package: 'Eda-Language'
				with: [ spec requires: #('Eda-Grammar' 'Eda-SyntaxParser') ].
			spec package: 'Eda-PList' with: [ spec requires: #('XMLParser') ].
			spec
				package: 'Eda-Rubric'
				with: [ spec requires: #('Eda-Grammar' 'Eda-Language' 'Eda-Scope' 'Eda-Snippets') ].
			spec package: 'Eda-Scope'.
			spec package: 'Eda-Snippets' with: [ spec requires: #('NeoJSON') ].
			spec
				package: 'Eda-SyntaxParser'
				with: [ spec requires: #('Onigmo' 'XMLParser' 'XPath') ].
			spec
				group: 'core'
				with: #('Eda-Grammar' 'Eda-Language' 'Eda-Rubric' 'Eda-Scope' 'Eda-Snippets' 'Eda-SyntaxParser').
			spec group: 'debugging' with: #('core' 'Eda-Debugging').
			spec group: 'default' with: #('core') ]
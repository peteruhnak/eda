baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
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
			spec package: 'Eda-Grammar' with: [ spec requires: #('Onigmo') ].
			spec
				package: 'Eda-Language'
				with: [ spec requires: #('Eda-Grammar' 'Eda-SyntaxParser') ].
			spec
				package: 'Eda-Rubric'
				with: [ spec requires: #('Eda-Grammar' 'Eda-Language' 'Eda-Scope' 'Eda-Snippets') ].
			spec package: 'Eda-Scope'.
			spec package: 'Eda-Snippets' with: [ spec requires: #('NeoJSON') ].
			spec package: 'Eda-SyntaxParser' with: [ spec requires: #('Onigmo' 'XMLParser') ].
			spec
				group: 'default'
				with: #('Eda-Grammar' 'Eda-Language' 'Eda-Rubric' 'Eda-Scope' 'Eda-Snippets' 'Eda-SyntaxParser') ]
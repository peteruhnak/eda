code examples
exampleMatchMojo
	| region |
region := OnigRegion new.
(OnigRegex from: '(mo)(jo)') match: 'mojo' at: 1 region: region.
region matchesDoWithIndex: [ :beg :end :index | 
	Transcript show: index; show: ': '; show: beg; show: '-'; show: end; show: Character cr ]
	
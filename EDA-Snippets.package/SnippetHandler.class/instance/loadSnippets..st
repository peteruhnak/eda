accessing
loadSnippets: path
	|json|
	json:= self loadFile: path.
	(json at: 'snippets') do: 
	[ :s | 
		|name prefix body| 
			name:= s at: 'name'.
			prefix:= s at: 'prefix'.
			body := s at: 'body'.
			snippets at: prefix put: (Snippet named: name withBody: body ).
		 ] 
accessing
definition
	"sublime-text monokai theme"
	^ { 
		{'entity.name'} . { TextColor color: (Color fromString: '#A6E22E') } .
		{'entity.name.class'} . { TextColor color: (Color fromString: '#A6E22E') . TextEmphasis underlined } .
		{'entity.other.inherited-class'} . { TextColor color: (Color fromString: '#A6E22E') . TextEmphasis italic . TextEmphasis underlined } .
		{'entity.name.tag'} . { TextColor color: (Color fromString: '#F92672') } .
		{'entity.other.attribute-name'} . { TextColor color: (Color fromString: '#A6E22E') } .
		{'entity.name.function'} . { TextColor color: (Color fromString: '#A6E22E') } .
		{'variable.parameter'} . { TextColor color: (Color fromString: '#FD971F') . TextEmphasis italic } .
		{'constant'} . { TextColor color: (Color fromString: '#AE81FF') } .
		{'storage'} . { TextColor color: (Color fromString: '#F92672') . TextEmphasis italic } .
		{'storage.type'} . { TextColor color: (Color fromString: '#66D9EF') . TextEmphasis italic } . 
		{'support'} . { TextColor color: (Color fromString: '#66D9EF') } .
		{'keyword'} . { TextColor color: (Color fromString: '#F92672') } .
		{'string'} . { TextColor color: (Color fromString: '#E6DB74') } .
		{'comment'} . { TextColor color: (Color fromString: '#75715E') } .
		{'invalid'} . { TextColor color: (Color fromString: '#F92672') }
	}
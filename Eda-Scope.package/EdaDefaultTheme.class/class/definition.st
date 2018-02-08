initialization
definition
	^ { 
		{'entity.name'} . {  } .
		{'entity.other.inherited-class'} . {  } .
		{'entity.name.section'} . {  }  .
		{'entity.name.tag'} . {  } .
		{'entity.other.attribute-name'} . {  } . 
		{'variable'} . { TextColor color: (Color r: 0 g: 0 b: 127) } .
		{'variable.language'} . { TextColor color: (Color r: 0 g: 0 b: 127) } .
		{'variable.parameter'} . { TextColor color: (Color r: 0 g: 0 b: 127) } .
		{'variable.function'} . { TextColor color: (Color r: 0 g: 0 b: 127) } .
		{'constant'} . {  } .
		{'constant.numeric'} . {  } .
		{'constant.language'} . {  } .
		{'constant.character.escape'} . {  } . 
		{'storage.type'} . {  } . 
		{'storage.modifier'} . {  } . 
		{'support'} . {  } .
		{'keyword'} . { TextColor color: (Color r: 0 g: 127 b: 127) } .
		{'keyword.control'} . { TextColor color: (Color r: 0 g: 127 b: 127) } .
		{'keyword.operator'} . { TextColor color: (Color r: 0 g: 127 b: 127) } .
		{'string'} . { TextColor color: Color orange } .
		{'comment'} . { TextColor color: Color gray } .
		{'invalid'} . {  } .
		{'invalid.deprecated'} . {  }
	}
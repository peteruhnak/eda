I visit rules to parse strings, generating a SequencableCollection of EdaGrMatch containing the extents and scopes associated with the match.

Create me using EdaGrammar>>#newParser. Use me sending #parse: message.

TODO:
	Lot of OnigRegion objects get created and destroyed when parsing, and this slows it down quite a bit... however they can be very well reused (just one for the whole parser is probably enough)
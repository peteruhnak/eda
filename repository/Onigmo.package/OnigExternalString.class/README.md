I am a helper object for passing strings into Onigmo functions. Those take strings in this form: take_string(char* start, char* end).

I allocate the external memory, copy string contents into it and provide methods to get the start/end pointers.

I also provide methods to get address of a certain index in the external string.
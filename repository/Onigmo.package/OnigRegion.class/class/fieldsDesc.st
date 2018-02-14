field definition
fieldsDesc
	^ #(
			int allocated;
			int num_regs;
			OnigPosition* beg;
			OnigPosition* end;
		)
	"don't do it, the generated methods aren't enough"
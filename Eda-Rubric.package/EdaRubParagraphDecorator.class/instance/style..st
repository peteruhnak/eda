private
style: aText
	" styling in the same process, ignores errors and just logs them in transcript
	[ ^ self styler style: aText ]
		on: Error
		do: [ :ex | 
			ex logCr.
			^ aText ] "
	
	self styler ifNotNil: [ :aStyler | aStyler styleInBackgroundProcess: aText ]
accessing
scopes
	^ (self scope splitOn: ',') asArray collect: #trimBoth
accessing
scopes
	^ ((string splitOn: ',') collect: #trimBoth) reject: #isEmpty
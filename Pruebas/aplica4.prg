Close All
Clear
Accept "Ingrese una cadena?" To cCadena
? "Cadena invertida =" + CadInv(cCadena)

Function CadInv
	Parameters cCadena
	nN = Len(Alltrim(cCadena))
	Declare cTemporal(nN)
	For nI = 1 To nN
		cTemporal(nI) = SubStr(cCadena, nI, 1)
	Next
	cInvertida = ""
	For nJ = nN To 1 Step -1
		cInvertida = cInvertida + cTemporal(nJ)
	Next J
Return cInvertida
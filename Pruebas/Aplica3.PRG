Close All
Clear
Input "Ingrese cantidad de n�meros?" To nN
Declare aVector(nN)
For nI = 1 To nN
	Input "N�mero [" + Str(nI) + "]?" To aVector(nI)
Next
nMax = aVector[1]
nMin = aVector[1]
nSuma = 0
For nI = 1 To nN
nSuma = nSuma + aVector[nI]
	If aVector[nI] > nMax Then
		nMax = aVector[nI]
	EndIf
    	If aVector[nI] < nMin Then
    		nMin = aVector[nI]
    	EndIf 
Next
nMedia = nSuma / nN
? "Suma  =" + Str(nSuma)
? "Media =" + Str(nMedia, 10, 2)
? "M�ximo=" + Str(nMax)
? "M�nimo=" + Str(nMin)
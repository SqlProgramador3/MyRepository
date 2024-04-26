Close All
Clear
Input "Ingrese el valor de A?" To nA
Input "Ingrese el valor de B?" To nB
Input "Ingrese el valor de C?" To nC
If nA > nB Then
nMay = nA
    	nMen = nB
Else
	nMay = nB
    	nMen = nA
EndIf
If nC > nMay Then
   	nCen = nMay
    	nMay = nC
Else 
	If nC > nMen Then
   		nCen = nC
   	Else
    		nCen = nMen
        	nMen = nC
   	EndIf
EndIf
? "Mayor   =" + Str(nMay)
? "Central =" + Str(nCen)
? "Menor   =" + Str(nMen)

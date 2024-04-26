Close All
Clear
Do While .T.
	Input "Consumo S/." To nConsumo
	If Type ("nConsumo") = "N"
		Exit
	EndIf
EndDo
Do Case
	Case nConsumo >= 30 And nConsumo <= 50
		nImporte = nConsumo * 0.9
	Case nConsumo > 50
		nImporte = nConsumo * 0.8
	Otherwise
		nImporte = nConsumo
EndCase
? "Importe a pagar S/." + Str(nImporte)

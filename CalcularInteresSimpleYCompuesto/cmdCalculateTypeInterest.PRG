? "Calcular Interes Simple y Compuesto"
? ""

? "Monto"
input "V." To amount
? ""

? "Porcentaje de tasa de interes"
input "V." To interestRate
? ""

? "Tiempo (en meses)"
input "V." To monthValue
? ""

? "Tiempo en d�as: Semanal(7), Quincenal(15), etc"
input "V." To timeCalculate
? ""

* Calcular el inter�s simple
simpleInterest = amount * interestRate / 100 * monthValue / 12  && Dividir por 12 para ajustar a meses

* Segun lapso de d�as establezco mi divisor
IF timeCalculate == 7 OR timeCalculate == 14 OR  timeCalculate == 150
	divider = 365
ELSE 
	divider = 360
ENDIF

* Calcular la frecuencia de capitalizaci�n (n) seg�n la Fecha de corte en d�as
n = divider / timeCalculate && Suponiendo un a�o de 360/365 d�as

* Calcular el inter�s compuesto
compoundInterest = amount * ((1 + interestRate / 100 / n) ^ (n * monthValue / 12))  && Dividir por 12 para ajustar a meses

* Valor con interes Simple
amountWithSimpleInterest = amount + simpleInterest

* Valor con interes Compuesto
amountWithCompoundInterest = amount + compoundInterest

? "Inter�s simple:"
? STR(simpleInterest)
? ""
? "Valor total mas interes simple:"
? STR(amountWithSimpleInterest)
? ""
? "Inter�s compuesto:"
? STR(compoundInterest)
? ""
? "Valor total mas interes compuesto:"
? STR(amountWithCompoundInterest)
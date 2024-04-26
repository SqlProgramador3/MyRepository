CLEAR
DO WHILE .T.  && Bucle infinito hasta que se cumpla la condici�n

	* Solicitar al usuario su a�o de nacimiento
	userYear = VAL(INPUTBOX("Ingrese su a�o de nacimiento:"))
	
	* Verificar si la entrada es un n�mero y est� en un rango v�lido
	IF userYear > 0 AND userYear <= YEAR(DATE()) AND userYear != 0.00
	
		DO WHILE .T.  && Bucle infinito hasta que se cumpla la condici�n
		
			* Solicitar al usuario su Mes de nacimiento
			userMonth = VAL(INPUTBOX("Ingrese su mes de nacimiento:"))

			* Verificar si la entrada es un n�mero y est� en un rango v�lido
			IF userMonth > 0 AND userMonth < 13
			
				DO WHILE .T.  && Bucle infinito hasta que se cumpla la condici�n
				
					* Solicitar al usuario su D�a de nacimiento
					userDay = VAL(INPUTBOX("Ingrese su d�a de nacimiento:"))

					* Verificar si la entrada es un n�mero y est� en un rango v�lido
					IF userDay > 0 AND userDay < 32
					
					    EXIT  && Salir del bucle si la entrada es v�lida
					ELSE
					    ? "�Error! Ingrese un mes de nacimiento v�lido."  && Mostrar mensaje de error
					ENDIF
				ENDDO
			    EXIT  && Salir del bucle si la entrada es v�lida
			ELSE
			    ? "�Error! Ingrese un mes de nacimiento v�lido."  && Mostrar mensaje de error
			ENDIF
		ENDDO
		EXIT  && Salir del bucle si la entrada es v�lida
	ELSE
	? userYear
	IF userYear == 0 
		EXIT
		? "Txto"
	ENDIF
	    ? "�Error! Ingrese un a�o de nacimiento v�lido."  && Mostrar mensaje de error
	ENDIF
ENDDO


currentYear	= YEAR(DATE()) 	&& Obtener el a�o actual
currentMonth	= MONTH(DATE())	&& Obtener el mes actual
currentDay	= DAY(DATE())		&& Obtener el d�a actual

* Calcular la edad restando el a�o de nacimiento al a�o actual
ages = currentYear - userYear

IF currentMonth < userMonth
	ages = ages - 1
ELSE	
	IF currentMonth == userMonth
		IF currentDay < userDay
			ages = ages - 1
		ENDIF
	ENDIF
ENDIF

* Mostrar la edad resultante en la pantalla
? "Su edad es:", INT(ages)

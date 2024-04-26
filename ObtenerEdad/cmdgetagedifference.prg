CLEAR
DO WHILE .T.  && Bucle infinito hasta que se cumpla la condición

	* Solicitar al usuario su año de nacimiento
	userYear = VAL(INPUTBOX("Ingrese su año de nacimiento:"))
	
	* Verificar si la entrada es un número y está en un rango válido
	IF userYear > 0 AND userYear <= YEAR(DATE()) AND userYear != 0.00
	
		DO WHILE .T.  && Bucle infinito hasta que se cumpla la condición
		
			* Solicitar al usuario su Mes de nacimiento
			userMonth = VAL(INPUTBOX("Ingrese su mes de nacimiento:"))

			* Verificar si la entrada es un número y está en un rango válido
			IF userMonth > 0 AND userMonth < 13
			
				DO WHILE .T.  && Bucle infinito hasta que se cumpla la condición
				
					* Solicitar al usuario su Día de nacimiento
					userDay = VAL(INPUTBOX("Ingrese su día de nacimiento:"))

					* Verificar si la entrada es un número y está en un rango válido
					IF userDay > 0 AND userDay < 32
					
					    EXIT  && Salir del bucle si la entrada es válida
					ELSE
					    ? "¡Error! Ingrese un mes de nacimiento válido."  && Mostrar mensaje de error
					ENDIF
				ENDDO
			    EXIT  && Salir del bucle si la entrada es válida
			ELSE
			    ? "¡Error! Ingrese un mes de nacimiento válido."  && Mostrar mensaje de error
			ENDIF
		ENDDO
		EXIT  && Salir del bucle si la entrada es válida
	ELSE
	? userYear
	IF userYear == 0 
		EXIT
		? "Txto"
	ENDIF
	    ? "¡Error! Ingrese un año de nacimiento válido."  && Mostrar mensaje de error
	ENDIF
ENDDO


currentYear	= YEAR(DATE()) 	&& Obtener el año actual
currentMonth	= MONTH(DATE())	&& Obtener el mes actual
currentDay	= DAY(DATE())		&& Obtener el día actual

* Calcular la edad restando el año de nacimiento al año actual
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

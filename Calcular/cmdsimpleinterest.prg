CLOSE ALL
CLEAR  && Limpiar la pantalla
? "Calculadora de Inter�s Simple" && Mostrar mensaje de t�tulo
? ""

* Solicitar al usuario los datos necesarios
INPUT "Monto principal:" To nPrincipal
INPUT "Tasa de inter�s en porcentaje" To nTasa
INPUT "Tiempo (en a�os):" To nTiempo

* Calcular el inter�s simple
nInteres = nPrincipal * nTasa * nTiempo / 100

* Mostrar los resultados
WAIT CLEAR
? "Monto principal:",
? STR(nPrincipal)
? ""
? "Tasa de inter�s (%):"
? STR(nTasa)
? ""
? "Tiempo (en a�os):"
? STR(nTiempo)
? ""
? "Inter�s simple:"
? STR(nInteres)
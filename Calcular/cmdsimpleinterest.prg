CLOSE ALL
CLEAR  && Limpiar la pantalla
? "Calculadora de Interés Simple" && Mostrar mensaje de título
? ""

* Solicitar al usuario los datos necesarios
INPUT "Monto principal:" To nPrincipal
INPUT "Tasa de interés en porcentaje" To nTasa
INPUT "Tiempo (en años):" To nTiempo

* Calcular el interés simple
nInteres = nPrincipal * nTasa * nTiempo / 100

* Mostrar los resultados
WAIT CLEAR
? "Monto principal:",
? STR(nPrincipal)
? ""
? "Tasa de interés (%):"
? STR(nTasa)
? ""
? "Tiempo (en años):"
? STR(nTiempo)
? ""
? "Interés simple:"
? STR(nInteres)
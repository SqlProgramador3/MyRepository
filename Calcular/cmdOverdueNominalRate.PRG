CLEAR  && Limpiar la pantalla
? "Calculadora de Interés Vencido"
? ""

* Solicitar al usuario los datos necesarios
INPUT "Capital:" To Capital
INPUT "Tasa de interés (%):" To TasaInteres
INPUT "Tiempo (en días):" To TiempoDias

* Convertir la tasa de interés a términos decimales
TasaInteresDecimal = TasaInteres / 100

* Calcular el interés vencido
InteresVencido = Capital * TasaInteresDecimal * TiempoDias

* Mostrar el resultado
WAIT CLEAR
? "Capital:"
? STR(Capital)
? ""
? "Tasa de interés (%):"
? STR(TasaInteres)
? ""
? "Tiempo (en días):"
? STR(TiempoDias)
? ""
? "Interés vencido:"
? STR(InteresVencido)

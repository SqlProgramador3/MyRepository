CLEAR  && Limpiar la pantalla
? "Calculadora de Inter�s Vencido"
? ""

* Solicitar al usuario los datos necesarios
INPUT "Capital:" To Capital
INPUT "Tasa de inter�s (%):" To TasaInteres
INPUT "Tiempo (en d�as):" To TiempoDias

* Convertir la tasa de inter�s a t�rminos decimales
TasaInteresDecimal = TasaInteres / 100

* Calcular el inter�s vencido
InteresVencido = Capital * TasaInteresDecimal * TiempoDias

* Mostrar el resultado
WAIT CLEAR
? "Capital:"
? STR(Capital)
? ""
? "Tasa de inter�s (%):"
? STR(TasaInteres)
? ""
? "Tiempo (en d�as):"
? STR(TiempoDias)
? ""
? "Inter�s vencido:"
? STR(InteresVencido)

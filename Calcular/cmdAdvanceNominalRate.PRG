CLEAR  && Limpiar la pantalla
? "Calculadora de Inter�s Anticipado"

* Solicitar al usuario los datos necesarios
INPUT "Capital:" To Capital
INPUT "Tasa de inter�s (%):" To TasaInteres
INPUT "Tiempo (en d�as):" To TiempoDias

* Convertir la tasa de inter�s a t�rminos decimales
TasaInteresDecimal = TasaInteres / 100

* Calcular el inter�s anticipado
InteresAnticipado = Capital * TasaInteresDecimal * TiempoDias

* Mostrar el resultado
WAIT CLEAR
? "Capital:", Capital
? "Tasa de inter�s (%):", TasaInteres
? "Tiempo (en d�as):", TiempoDias
? "Inter�s anticipado:", InteresAnticipado

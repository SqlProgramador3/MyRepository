CLEAR  && Limpiar la pantalla
? "Calculadora de Interés Anticipado"

* Solicitar al usuario los datos necesarios
INPUT "Capital:" To Capital
INPUT "Tasa de interés (%):" To TasaInteres
INPUT "Tiempo (en días):" To TiempoDias

* Convertir la tasa de interés a términos decimales
TasaInteresDecimal = TasaInteres / 100

* Calcular el interés anticipado
InteresAnticipado = Capital * TasaInteresDecimal * TiempoDias

* Mostrar el resultado
WAIT CLEAR
? "Capital:", Capital
? "Tasa de interés (%):", TasaInteres
? "Tiempo (en días):", TiempoDias
? "Interés anticipado:", InteresAnticipado

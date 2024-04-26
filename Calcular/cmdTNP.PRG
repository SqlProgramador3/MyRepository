CLEAR  && Limpiar la pantalla
? "Calculadora de TNP"
? ""

* Solicitar al usuario los datos necesarios
INPUT "Tasa nominal anual (%):" To r
INPUT "Frecuencia de capitalización (por año):" To n

* Convertir la tasa nominal a términos decimales
rDecimal = r / 100

* Calcular la Tasa de interés Nominal periódica (TNP)
TNP = ((1 + rDecimal / n) ^ n) - 1

* Mostrar el resultado
WAIT CLEAR
? "Tasa de interés Nominal periódica (TNP):"
? STR(TNP * 100) + "%"  && Mostrar la TNP en porcentaje

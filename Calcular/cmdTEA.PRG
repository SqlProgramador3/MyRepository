CLEAR  && Limpiar la pantalla
? "Calculadora de TEA (Tasa Efectiva Anual)"

* Solicitar al usuario los datos necesarios
INPUT "Tasa nominal anual (%):" To r
INPUT "Frecuencia de capitalización (por año):" To n

* Convertir la tasa nominal a términos decimales
rDecimal = r / 100

* Calcular la Tasa Efectiva Anual (TEA)
TEA = ((1 + rDecimal / n) ^ n) - 1

* Mostrar el resultado
WAIT CLEAR
? "Tasa Efectiva Anual (TEA):"
? STR(TEA * 100)  && Mostrar la TEA en porcentaje

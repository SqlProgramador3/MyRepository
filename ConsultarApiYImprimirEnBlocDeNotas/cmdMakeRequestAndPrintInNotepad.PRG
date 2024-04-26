CLOSE ALL
CLEAR
*** Usando WinHttpRequest: ***
* Para esta prueba utilice una API que devuelve 10 usuarios como objetos

* Crear el objeto WinHttpRequest
objetHttp = CREATEOBJECT("WinHttp.WinHttpRequest.5.1")

* Definir la URL de la API
urlApi = "https://jsonplaceholder.typicode.com/users"

* Hacer la solicitud GET
objetHttp.Open("GET", urlApi)
objetHttp.Send()

* Obtener la respuesta
responseApi = objetHttp.ResponseText

* Mostrar la respuesta
* ? responseApi

*** Para un archivo especifico ***
* Definir la ruta y nombre del archivo de bloc de notas
* filePath = "D:\Ejercicios\cmdCreateApiAndPrintToNotepad\printInfoAPI.txt"

* Abrir el archivo en modo escritura
* archiveOpen = FOPEN(filePath, "W")

*** Para crear archivos ***

* Mi fecha actual
idDateTime = DATETIME()

* Creo mi nuevo Guid
newGuid = CREATEOBJECT("Scriptlet.TypeLib")

* Capturo mi cadena
newGuid = newGuid.Guid

* Elimino llaves "{}" y espacios en blanco
newGuid = STRTRAN(newGuid, "{", "")  && Remover "{"
newGuid = STRTRAN(newGuid, "}", "")  && Remover "}"
newGuid = STRTRAN(newGuid, " ", "")  && Remover espacios

* Remuevo los dos ultimos digitos que corresponde a " t"
newGuidFormat = LEFT(newGuid, LEN(newGuid) - 2)

* Imprimo el Guid
? newGuidFormat

&& DTOC(idDateTime, 1) Convertir una fecha (almacenada en una variable tipo DateTime) a una cadena de caracteres
&& STRTRAN(TIME(), ":", "") Devuelve mi (hora:"12:59:59") sin doble punto "125959"

* Nombre para el archivo con ID unico
filePath = "D:\Ejercicios\cmdCreateApiAndPrintToNotepad\DataAPI\UserList_" + DTOC(idDateTime, 1) + "_" + STRTRAN(TIME(), ":", "") + newGuidFormat + ".txt"

* Crear el archivo
SET TEXTMERGE TO (filePath)

SET TEXTMERGE TO
* Abrir el archivo en modo escritura
archiveOpen = FOPEN(filePath, "W")

* Verificar si se abrió correctamente el archivo
IF archiveOpen > 0

	* Escribir el contenido de la API en el archivo
	FPUTS(archiveOpen, responseApi)

	* Cerrar el archivo
	FCLOSE(archiveOpen)

	? "El contenido se ha guardado correctamente en el archivo:", filePath 
ELSE
 	? "Error al abrir el archivo:", filePath
ENDIF

? ""
? "//////////////// END REQUEST /////////////////"
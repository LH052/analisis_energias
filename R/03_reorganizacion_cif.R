datos <- read.xlsx("Calculo por servidor1.xlsx", sheetName = "Reorganizacion", rowIndex = NULL, startRow = 1, colIndex = c(5, 6, 7, 8, 9), as.data.frame = TRUE, header = TRUE, colClasses = NA, keepFormulas = FALSE)

for (i in 1:dim(datos)[1])
{
from <- paste("C:/Users/icm25b/Documents/Javier/Pruebas R/analisisEnergia/Docs Vasp/",datos[i,3],"/",datos[i,2],"/",datos[i,2],".cif", sep = "", collapse = NULL)

to <- paste("C:/Users/icm25b/Documents/Javier/Pruebas R/analisisEnergia/Docs Vasp/Estructuras/",datos[i,4],"/",datos[i,5],".cif", sep = "", collapse = NULL)

file.copy(from,to,overwrite = FALSE, copy.mode = TRUE, copy.date = TRUE)

}

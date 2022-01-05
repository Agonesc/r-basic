## Pregunta 1

objetivo = 250000000

objetivoEnDias = objetivo/60/60/24
cantidadEnAnios = objetivoEnDias%/%365
restoEnDias = objetivoEnDias%%365
restoEnHoras = (restoEnDias - restoEnDias%/%1) * 24
restoEnMin = (restoEnHoras - restoEnHoras%/%1) * 60
restoEnSeg = (restoEnMin - restoEnMin%/%1) * 60

diasPorBisiestos = (cantidadEnAnios+2)%/%4

diasSobran = (objetivoEnDias%%365-diasPorBisiestos)%/%1



resulAnio = 2018+cantidadEnAnios
resulDia = 31 - (365-diasSobran)
resulHora = restoEnHoras%/%1
resulMins = restoEnMin%/%1
resulSegs = ceiling(restoEnSeg)

result = paste("El día", resulDia, "de Diciembre de", resulAnio, "a las", resulHora, "horas", resulMins, "minutos y", resulSegs, "segundos")
print (result)


## Pregunta 2
f = function(A, B){B/A}
f(2, 4)
f(5, 3)
f(7, -14)
f(1, 0)


# Se puede aplicar esta fórmula también en caso de querer introducir los valores y no despejar a mano
g = function(A, B, C){(C-B)/A}
g(2, 4, 0)
g(5, 3, 0)
g(7, 4, 18)
g(1, 1, 1)

## Pregunta 3

round((3*exp(1) - pi), 3)

## Pregunta 4

round(Mod(((2+3i)^2)/(5+8i)), 3)


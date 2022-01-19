## Pregunta 1
Harry = -10:17
Harry[7]

## Pregunta 2
formula1 = function(n){
  100*2^n - 7*3^n
}
max(sapply(0:200, FUN = formula1))

## Pregunta 3
formula2 = function(n){
  3*5^n-1
}
x = sapply(0:40, FUN = formula2)
subX = x[x>3.5]
subX

## Pregunta 4
x = c(5+4i, 4-8i, 1+1i, 7-14i, 32+89i)

formula3 = function(x){
  real = round(Re(x), 2);
  imaginaria = round(Im(x), 2);
  modulo = round(Mod(x), 2);
  argumento = round(Arg(x),2);
  conjugado = round(Conj(x),2);
  L = list(Real=real, Imaginaria=imaginaria, Modulo=modulo, Argumento=argumento, Conjugado=conjugado)
  return(L)
}

formula3(5+4i)
formula3(x)

## Pregunta 5
formula4 = function(a,b,c){ 
  x1 = (-b+sqrt(b^2-4*a*c))/2*a
  x2 = (-b-sqrt(b^2-4*a*c))/2*a
  L2 = list(Solucion1 = x1, Solucion2 = x2)
  return(L2)
}

formula4(1, 2, 1)

## Pregunta 6
vec = c(0,9,98,2,6,7,5,19,88,20,16,0)
vec[vec>=9 & vec <= 20]
vec[vec>=9 & vec != 88 & vec != 98]
x = c(2,8,10,11)
vec[x]

which(vec%%2==0)
which(vec%%2==1 & vec>20)
which(vec==max(vec))
which(vec==min(vec))

## Pregunta 7
A = matrix(1:4, nrow = 2)
X = A%*%(A+A)%*%A
X
X[2,2]

## Pregunta 8
B = rbind(c(2,4,-6), c(0, 0,3), c(0,-2,5))
B
eigen(B)$values

## Pregunta 9
C = rbind(c(-48, 35, -12), c(-134, 95, -32), c(-194, 133, -44))
C
round(eigen(C)$vectors, 3)

## Pregunta 10
D = rbind(c(-2, -8, -2, 3), c(-3, -6, -1, 2), c(-9, -22, -3, 7), c(-18, -44, -8, 15))
D
qr(D)$rank

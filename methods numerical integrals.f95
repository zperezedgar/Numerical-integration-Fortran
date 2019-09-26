PROGRAM INTEGRALES								!SOLO MODIFICAR FUNCION HASTA EL FINAL!

IMPLICIT NONE
!Declarar variables
DOUBLE PRECISION :: F, a, b, n, integral, sumapares,  sumaimpares
INTEGER :: i, trabajar=1

!WRITE(*,*)'Bienvenido al programa para Integrar'
WRITE (*,*)'Ingrese el punto a inicial del intervalo'
READ (*,*) a
WRITE (*,*)'Ingrese el punto b final del intervalo'
READ (*,*) b

DO WHILE (trabajar == 1)
WRITE (*,*)'Ingrese el numero n de divisiones del intervalo'
READ (*,*) n

!Aquí DESCOMENTAMOS dependiendo de lo que queramos hacer, Renglon por renglon!

!**************************************************************************************************************
!**************************************************************************************************************

!INTEGRAL POR RECTÁNGULOS (Riemann)
integral=0	!Inicializamos la suma

DO i=1, n
integral=integral+F(a+(b-a)*i/n)	
END DO

integral=integral*(b-a)/n

WRITE (*,*)'Integral= ', integral
WRITE (*,*)
WRITE(*,*) 'Ingrese 1 para trabajar de nuevo, Ingrese otro Numero para SALIR'
READ (*,*) trabajar
!**************************************************************************************************************
!**************************************************************************************************************

!INTEGRAL POR TRAPECIOS
!integral=0	!Inicializamos la suma
!DO i=1, (n-1)
!integral=integral+F(a+(b-a)*i/n)	
!END DO

!integral=2*integral+F(a)+F(b)	
!integral=integral*(b-a)/(2*n)

!WRITE (*,*)'Integral= ', integral
!WRITE (*,*)
!WRITE(*,*) 'Ingrese 1 para trabajar de nuevo, Ingrese otro Numero para SALIR'
!READ (*,*) trabajar
!**************************************************************************************************************
!**************************************************************************************************************

!INTEGRAL POR MÉTODO DE SIMPSON 1/3		!NECESITA NUMERO PAR DE SEGMENTOS n!!!!!
!integral=0	!Inicializamos las sumas
!sumapares=0
!sumaimpares=0
  
!DO i=1, ((n/2)-1)	!Sumamos los pares
!sumapares=sumapares+F(a+(b-a)*2*i/n)	
!END DO

!DO i=1, (n/2)	!Sumamos los impares
!sumaimpares=sumaimpares+F(a+(b-a)*(2*i-1)/n)	
!END DO

!integral=4*sumaimpares+2*sumapares+F(a)+F(b)	
!integral=integral*(b-a)/(3*n)

!WRITE (*,*)'Integral= ', integral
!WRITE (*,*)
!WRITE(*,*) 'Ingrese 1 para trabajar de nuevo, Ingrese otro Numero para SALIR'
!READ (*,*) trabajar
!**************************************************************************************************************
!**************************************************************************************************************

!INTEGRAL DE DATOS TABULADOS NO UNIFORMEMENTE ESPACIADOS
!1.- Se aplica la regla del trapecio a cada segmento y sumar los resultados
!2.- Se propone un polinomio de ajuste por mminimos cuadrados, el cual se integra y solamente muestra un
!valor representativo de la integral en funcion del valor de r

END DO
STOP
END PROGRAM

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
DOUBLE PRECISION FUNCTION F(x)
IMPLICIT NONE
!Declaramos arumentos llamados
DOUBLE PRECISION, INTENT(IN) :: x 

!Evaluar Expresion
F=SIN(SIN(x))										!!!!!!!!!!!!!!!!!!!!!!!!!!!!ESTO ES LO QUE SE DEBE CAMBIAR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

END FUNCTION
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!









#lang racket

;pasar de millas a kilometros
(define(convertir)
     (display "Ingrese la cantidad de millas: ")
     (let ([millas (read)])
          (display "La cantidad de kilometros es: ")
          (display (* millas 1.60934))
          (newline)))

;pasarle un numero y determina si es par o impar
(define (par_impar)
    (display "Ingrese un numero: ")
    (let ([numero (read)])
        (cond
            ((= (remainder numero 2) 0) (display "El numero es par"))
            (else (display "El numero es impar"))
        )
    )
)
;otra fomra de verificar si un numero es par o impar
(define (par_impar2)
    (display "Ingrese un numero: ")
    (let ([numero (read)])
        (if (even? numero)
            (display "El numero es par")
            (display "El numero es impar")
        )
    )
)

;resiva un numero y devuelva el dobule usando lambdas
(define (doble)
    (display "Ingrese un numero: ")
    (let ([numero (read)])
        (display "El doble del numero es: ")
        (display ((lambda (x) (* x 2)) numero))
    )
)
;otra manera de hacer el doble de un numero
(define (doble2)
    (display "Ingrese un numero: ")
    (let ([numero (read)])
        (display "El doble del numero es: ")
        (display (* numero 2))
    )
)

;Escribe una función que pida al usuario la cantidad de elementos y luego construya una lista con esos elementos.
(define (crear_lista)
    (display "Ingrese la cantidad de elementos: ")
    (let ([cantidad (read)])
        (display "Ingrese los elementos: ")
        (let loop ((elementos cantidad) (lista '()))
            (if (zero? elementos)
                (display lista)
                (begin
                    (let ([elemento (read)])
                        (loop (- elementos 1) (cons elemento lista))
                    )
                )
            )
        )
    )
)
;otra forma de hacer la lista
(define (crear_lista2)
    (display "Ingrese la cantidad de elementos: ")
    (let ([cantidad (read)])
        (display "Ingrese los elementos: ")
        (let loop ((elementos cantidad) (lista '()))
            (if (zero? elementos)
                (display lista)
                (begin
                    (loop (- elementos 1) (cons (read) lista))
                )
            )
        )
    )
)
!--------------------------------------------------------------------------
!  TITLE: CS260 Lab5 lesson 2
!  AUTHOR: Ryan Shipp
!  CLASS: CSCI260A
!  DATE WRITTEN: 03.26.2014
!  LAST REVISION: 03.26.2014
!  DESCRIPTION: Find road traffic density.
!  VARIABLES USED:
!    NAME:           TYPE:     COMMENT:
!  lambda            REAL      Lambda for poisson function, 1.6.
!
!
!---------------------------------------------------------------------------
Program As_Traffic_Goes_By

Implicit None  !Must explicitly declare all variables

! Declare the variables and initialize.
REAL :: lambda

! Code the Problem Here
    lambda = 1.6
    WRITE(*,*) "Probablility of 0 cars passing in 1 minute:", poisson(0, 1, lambda)
    WRITE(*,*) "Probablility of 1 cars passing in 1 minute:", poisson(1, 1, lambda)
    WRITE(*,*) "Probablility of 2 cars passing in 1 minute:", poisson(2, 1, lambda)
    WRITE(*,*) "Probablility of 3 cars passing in 1 minute:", poisson(3, 1, lambda)
    WRITE(*,*) "Probablility of 4 cars passing in 1 minute:", poisson(4, 1, lambda)
    WRITE(*,*) "Probablility of 5 cars passing in 1 minute:", poisson(5, 1, lambda)


! Say Goodbye
   Write(*,*)
   Write(*,*) ' Have a Great Afternoon!!! '
   Write(*,*)

CONTAINS

FUNCTION poisson(k, t, lambda)
    INTEGER :: k, t
    REAL :: poisson, e, lambda
    e = 2.718282
    poisson = e**(-lambda*t) * ((lambda*t)**k)/factorial(k)
    RETURN
END

FUNCTION factorial(n)
    ! I'm missing something, this function shouldn't be this complicated.
    INTEGER :: factorial, partial, counter, fin, n
    IF (n .EQ. 0) THEN
        fin = 1
    ELSE
        fin = n
    END IF

    partial = fin
    DO counter = 1, fin - 1
        partial = partial * counter
    END DO
    factorial = partial
    RETURN
END

End Program   !As_Traffic_Goes_By

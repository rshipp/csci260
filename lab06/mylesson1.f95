!--------------------------------------------------------------------------
!  TITLE: CS260 Lab6 lesson 1
!  AUTHOR: Ryan Shipp
!  CLASS: CSCI260A
!  DATE WRITTEN: 02.19.2014
!  LAST REVISION: 02.19.2014
!  DESCRIPTION: Compute the nth partial sum of the infinite series whose
!               terms consist of 1/k!
!  VARIABLES USED:
!    NAME:           TYPE:     COMMENT:
!  n                 INTEGER   Input value from user.
!  counter           INTEGER   Count iterations through the loop.
!  sum               REAL      The intermediate and final answer.
!---------------------------------------------------------------------------

Program to_infinity_and_beyond

Implicit None  !Must explicitly declare all variables

! Declare the variables and initialize.
    INTEGER :: n, counter, factorial
    REAL    :: sum

! Code the Problem Here
    WRITE(*,*) "Enter an integer value, n."
    READ(*,*) n

    sum = 0
    DO counter = 0, n
        sum = sum + (1.0/factorial(counter))
    END DO

    WRITE(*,*) "The n'th partial sum is", sum

! Say Goodbye
   Write(*,*)
   Write(*,*) ' Have a Great Afternoon!!! '
   Write(*,*)

End Program

FUNCTION factorial(n)
    ! I'm missing something, this function shouldn't be this complicated.
    INTEGER :: factorial, partial, counter, fin
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

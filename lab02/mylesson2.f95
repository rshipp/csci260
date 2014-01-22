!--------------------------------------------------------------------------
!  Header section:
!  TITLE: CSCI260 Lab 2 Lesson 1
!  AUTHOR: Ryan Shipp
!  CLASS:  CSCI260A
!  DATE WRITTEN: 01.21.2014
!  LAST REVISION: 01.21.2014
!  DESCRIPTION: This program demonstrates the Fortran's basic math
!               operations.
!  VARIABLES USED:
!       NAME:           TYPE:           COMMENT:
!
!       intM            INTEGER         Number of times interest is
!                                         compounded in a year.
!       intN            INTEGER         Number of years.
!       rP              REAL            Initial amount of money.
!       rF              REAL            Final value.
!       rAPR            REAL            Annual percent interest rate.
!
!---------------------------------------------------------------------------

PROGRAM Lab2Lesson1
    IMPLICIT NONE  !Must explicitly declare all variables

    ! Declare the variables.
    INTEGER :: intM, intN
    REAL :: rP, rF, rAPR

    ! Begin your code on the next line
    ! Get user input.
    WRITE(*,*) "Please enter..."
    WRITE(*,*) "An initial amount of money:"
    READ(*,*) rP
    WRITE(*,*) "An annual interest rate:"
    READ(*,*) rAPR
    WRITE(*,*) "The number of times that interest is compounded in a year:"
    READ(*,*) intM
    WRITE(*,*) "The number of years the money is left in the account:"
    READ(*,*) intN

    ! Perform calculations.
    rF = rP * ( 1 + rAPR / ( 100 * intM ) )**(intM * intN)

    ! Write answer.
    WRITE(*,*) "Your future value is:", rF

    ! Now let's add a little class to our program
    WRITE(*,*)
    WRITE(*,*) ' Have a Great Day!!! '
    WRITE(*,*)

    STOP
END PROGRAM !Lab2Lesson1

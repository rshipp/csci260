!--------------------------------------------------------------------------
!  TITLE: CS260 Lab 5 Lesson 2 Factorial
!  AUTHOR: Ryan Shipp
!  CLASS: CSCI260A
!  DATE WRITTEN: 02.12.2014
!  LAST REVISION: 02.12.2014
!  DESCRIPTION: 
!  VARIABLES USED:
!    NAME:           TYPE:     COMMENT:
!  V                 INTEGER   Volume.
!  n                 INTEGER   Number of atoms.
!  T                 INTEGER   Temperature.
!  P                 REAL      Pressure.
!  R                 REAL      Universal gas constant.
!---------------------------------------------------------------------------

Program HaveGas

Implicit None  !Must explicitly declare all variables

! Declare the variables and initialize.
    INTEGER :: V, n, T
    REAL    :: P, R

! Code the Problem Here
    n = 1
    V = 10
    R = 8.214

    DO T = 250, 450, 1
        P = (N*R*T)/REAL(V)
        WRITE(*,*) T, "K ->", P, "kPA"
    END DO


! Say Goodbye
   Write(*,*)
   Write(*,*) ' Have a Great Afternoon!!! '
   Write(*,*)

End Program

!--------------------------------------------------------------------------
!  Header section:
!  TITLE: CSCI260 Lab 2 Lesson 1
!  AUTHOR: Ryan Shipp
!  CLASS: CSCI260A
!  DATE WRITTEN: 01.21.2014
!  LAST REVISION: 01.21.2014
!  DESCRIPTION: This program demonstrates the Fortran's basic math
!               operations.
!  VARIABLES USED:
!       NAME:           TYPE:           COMMENT:
!
!       int1            INTEGER         Constant.
!       int2            INTEGER         Constant.
!       int3            INTEGER         Constant.
!       int4            INTEGER         Constant.
!       intAns          INTEGER         Stores the answer.
!       r1              REAL            Constant.
!       r2              REAL            Constant.
!       r3              REAL            Constant.
!       r4              REAL            Constant.
!       rAns            REAL            Stores the answer.
!
!---------------------------------------------------------------------------

PROGRAM Lab2Lesson1
    IMPLICIT NONE  !Must explicitly declare all variables

    ! Declare the variables.
    INTEGER :: int1, int2, int3, int4, intAns
    REAL :: r1, r2, r3, r4, rAns


    ! Begin your code on the next line
    int1 = 4
    int2 = 18
    int3 = -42
    int4 = 24

    intAns = int1+int2+int3+int4
    WRITE(*,*) int1, '+',int2,'+',int3,'+',int4,'=',intAns

    intAns = int2 - int1
    WRITE(*,*) int2,'-',int1,'=',intAns

    intAns = int3*int4
    WRITE(*,*) int3, '*', int4,'=',intAns

    intAns = int1 / int2
    WRITE(*,*)int1,'/',int2,'=',intAns

    r1 = 1.1
    r2 = 13.5
    r3 = -9.999

    rAns = r1+r2
    WRITE(*,*) r1,'+',r2,'=',rAns

    rAns = r2 - r3
    WRITE(*,*) r2,'-',r3,'=',rAns

    rAns = r1*r2
    WRITE(*,*) r1,'*',r2,'=',rAns

    rAns = r2 / r3
    WRITE(*,*) r2,'/',r3,'=',rAns


    ! Now let's add a little class to our program
    WRITE(*,*)
    WRITE(*,*) ' Have a Great Day!!! '
    WRITE(*,*)

    STOP
END PROGRAM !Lab2Lesson1

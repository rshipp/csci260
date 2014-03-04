!--------------------------------------------------------------------------
!  TITLE: CS260 Lab7 Lesson 1
!  AUTHOR: Ryan Shipp
!  CLASS: CSCI260A
!  DATE WRITTEN: 02.28.2014
!  LAST REVISION: 02.28.2014
!  DESCRIPTION: Display trig tables.
!  VARIABLES USED:
!    NAME:           TYPE:     COMMENT:
!
!
!---------------------------------------------------------------------------
PROGRAM A_Format_Of_Things
IMPLICIT NONE  !Must explicitly declare all variables
! Declare the variables and initialize.
    INTEGER :: deg
    REAL    :: rad

! Code here
    rad = 0.0
    WRITE(*,*) "Theta  SIN(Theta) COS(Theta) TAN(Theta)"
    WRITE(*,*) "---------------------------------------------"
    DO WHILE (rad .LE. 3.2)
        WRITE(*,214) rad, SIN(rad), COS(rad), TAN(rad)
214     FORMAT (f3.1,3x,f8.4,3x,f8.4,3x,f8.4)
	rad = rad + 0.1
    END DO

    WRITE(*,*)
    WRITE(*,*) "DEG    SIN(DEG)   COS(DEG)   TAN(DEG)"
    WRITE(*,*) "---------------------------------------------"
    DO deg = 0, 180, 5
    	rad = deg * 3.14159 / 180
        WRITE(*,215) deg, SIN(rad), COS(rad), TAN(rad)
215     FORMAT (i3,3x,f8.4,3x,f8.4,3x,f8.4)
    END DO

! Say Goodbye
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Afternoon!!! '
   WRITE(*,*)

END PROGRAM

!--------------------------------------------------------------------------
!  TITLE: CS260 Lab7 Lesson 2
!  AUTHOR: Ryan Shipp
!  CLASS: CSCI260A
!  DATE WRITTEN: 02.28.2014
!  LAST REVISION: 02.28.2014
!  DESCRIPTION: Display corrected sensor data.
!  VARIABLES USED:
!    NAME:           TYPE:     COMMENT:
!  fix               REAL      Value to fix the data.
!  seconds           REAL      Row 1 in the file.
!  values            REAL      Row 2 in the file.
!  lines             INTEGER   Lines in the data file.
!---------------------------------------------------------------------------

PROGRAM From_Here_to_There

IMPLICIT NONE  !Must explicitly declare all variables

! Declare the variables and initialize.
    REAL :: fix, seconds, values
    INTEGER :: lines

! Code here
    fix = 1.072
    OPEN(1,file='inData.dat', action='read')
    DO lines = 0, 37, 1
        READ(1,*) seconds, values
        WRITE(*, '(f4.2,f10.4)') seconds, values*fix
    END DO

! Say Goodbye
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Afternoon!!! '
   WRITE(*,*)

END PROGRAM

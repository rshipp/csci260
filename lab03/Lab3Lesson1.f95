!--------------------------------------------------------------------------
!  Header section:
!  TITLE: CSCI260 Lab 3 Lesson 1
!  AUTHOR: Ryan Shipp
!  CLASS:  CSCI260A
!  DATE WRITTEN: 01.29.2014
!  LAST REVISION: 01.29.2014
!  DESCRIPTION: This program demonstrates the Fortran's basic math operations.
!  VARIABLES USED:
!       NAME:           TYPE:           COMMENT:
!
!
!
!
!---------------------------------------------------------------------------

PROGRAM Lab3Lesson1

IMPLICIT NONE  !Must explicitly declare all variables

! Declare the variables.
   INTEGER :: temp

! Begin your code on the next line
   WRITE(*,*) "What is the water's temperature?"
   READ(*,*) temp

   IF (temp .GT. 212) THEN
      WRITE(*,*) "Broken Thermometer"
   ELSE IF (temp .GT. 140) THEN
      WRITE(*,*) "Too hot"
   ELSE IF (temp .GT. 90) THEN
      WRITE(*,*) "Just right"
   ELSE IF (temp .GT. 32) THEN
      WRITE(*,*) "Too cold"
  ELSE
      WRITE(*,*) "Frozen"
   END IF

! Now let's add a little class to our program
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Day!!! '
   WRITE(*,*)

   STOP
END PROGRAM !Lab3Lesson1

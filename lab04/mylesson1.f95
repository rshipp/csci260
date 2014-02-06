!--------------------------------------------------------------------------
!  Header section:
!  TITLE: CSCI260 Lab 4 Lesson 1
!  AUTHOR: Ryan Shipp
!  CLASS:  CSCI260A
!  DATE WRITTEN: 02.05.2014
!  LAST REVISION: 02.05.2014
!  DESCRIPTION: This program demonstrates the use of the SELECT CASE statement.
!  VARIABLES USED:
!       NAME:           TYPE:           COMMENT:
!  option               INTEGER         Stores the user-selected option.
!  param1               REAL            Stores the first parameter read from the user.
!  param2               REAL            Stores the second parameter, if any.
!  answer               REAL            Stores the computed result.
!---------------------------------------------------------------------------

PROGRAM Lab4Lesson1

IMPLICIT NONE  !Must explicitly declare all variables

! Declare the variables.
    INTEGER :: option
    REAL    :: param1, param2, answer


! Begin your code on the next line
    WRITE(*,*) "***** The area calculator, advanced edition *****"
    WRITE(*,*) "1. Find the area of a triangle."
    WRITE(*,*) "2. Find the area of a circle."
    WRITE(*,*) "3. Find the area of a square."
    WRITE(*,*) "4. Find the area of a rectangle."
    WRITE(*,*) "*****************************************"
    WRITE(*,*)
    WRITE(*,*) "What option do you wish?"
    READ(*,*) option
    SELECT CASE (option)
        CASE (1)
            WRITE(*,*) "Please enter the base length."
            READ(*,*) param1
            WRITE(*,*) "Please enter the height."
            READ(*,*) param2
            answer = 0.5 * param1 * param2
            WRITE(*,*) "The area of your triange is:", answer
        CASE (2)
            WRITE(*,*) "Please enter the radius."
            READ(*,*) param1
            ! param2 is PI
            param2 = 3.14159
            answer = param2 * param1**2
            WRITE(*,*) "The area of your circle is:", answer
        CASE (3)
            WRITE(*,*) "Please enter the side length."
            READ(*,*) param1
            answer = param1 * param1
            WRITE(*,*) "The area of your square is:", answer
        CASE (4)
            WRITE(*,*) "Please enter the height."
            READ(*,*) param1
            WRITE(*,*) "Please enter the width."
            READ(*,*) param2
            answer = param1 * param2
            WRITE(*,*) "The area of your rectangle is:", answer
        CASE DEFAULT
            WRITE(*,*) "Invalid choice."
    END SELECT




! Now let's add a little class to our program
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Day!!! '
   WRITE(*,*)

   STOP
END PROGRAM !Lab4Lesson1

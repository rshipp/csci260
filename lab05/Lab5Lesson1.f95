!--------------------------------------------------------------------------
!  TITLE: CS260 Lab5 lesson 1
!  AUTHOR: Ryan Shipp
!  CLASS: CSCI260A
!  DATE WRITTEN: 02.12.2014
!  LAST REVISION: 02.12.2014
!  DESCRIPTION: 
!  VARIABLES USED:
!    NAME:           TYPE:     COMMENT:
!  x                 REAL      A random real number.
!  ans               INTEGER   The correct answer.
!  guess             INTEGER   The user's guess.
!---------------------------------------------------------------------------

Program guessGame

Implicit None  !Must explicitly declare all variables

! Declare the variables and initialize.
    REAL    :: x
    INTEGER :: ans, guess

! Code the Problem Here
    CALL random_seed()
    CALL RANDOM_NUMBER(x)

    WRITE(*,*) x
    ans = 1 + INT(x * 100)

    DO WHILE (guess .NE. ans)
        WRITE(*,*) "Guess a number."
        READ(*,*) guess
        IF (guess .GT. ans) THEN
            WRITE(*,*) "Too high."
        ELSE IF (guess .LT. ans) THEN
            WRITE(*,*) "Too low."
        END IF
    END DO

    WRITE(*,*) "You guessed it!"

! Say Goodbye
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Afternoon!!! '
   WRITE(*,*)

End Program

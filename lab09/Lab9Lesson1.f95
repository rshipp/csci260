!--------------------------------------------------------------------------
!  TITLE: CS260 Lab9 lesson 1
!  AUTHOR: Ryan Shipp
!  CLASS: CSCI260A
!  DATE WRITTEN: 03.26.2014
!  LAST REVISION: 03.26.2014
!  DESCRIPTION: Play the lucky 7 dice game.
!  VARIABLES USED:
!    NAME:       TYPE:     COMMENT:
!
!
!
!---------------------------------------------------------------------------

Program Lucky_7

Implicit None  !Must explicitly declare all variables

! Declare the variables and initialize.
INTEGER :: d1, d2, bet, ch
REAL    :: x


! Code the Problem Here

    CALL RANDOM_SEED
    DO
        CALL getBet(bet, ch)
        CALL RANDOM_NUMBER(x)
        d1 = INT(x * 6) +1
        CALL RANDOM_NUMBER(x)
        d2 = INT(x * 6) +1
    END DO


! Say Goodbye
   Write(*,*)
   Write(*,*) ' Have a Great Afternoon!!! '
   Write(*,*)

CONTAINS 

SUBROUTINE getBet(amount, d_values)
IMPLICIT NONE  !Must explicitly declare all variables
    INTEGER, INTENT(OUT):: amount, d_values

    WRITE(*,*)"*****************************************************"
    WRITE(*,*)"What range of dice values do you wish to bet on?"
    WRITE(*,*)"1.  For 1 - 6 "
    WRITE(*,*)"2.  For 7 "
    WRITE(*,*)"3.  For 8 - 12 "
    WRITE(*,*)"*****************************************************"
    READ(*,*) d_values
    DO
        IF (d_values >= 1 .AND. d_values <= 3)EXIT
        WRITE(*,*)"You entered an invalid choice, choose again"
        READ(*,*) d_values
    END DO
    WRITE(*,*)"*****************************************************"
    WRITE(*,*)"How much do you wish to bet??"
    READ(*,*) amount
    WRITE(*,*)"*****************************************************"
END SUBROUTINE


End Program   !Lucky_7

!--------------------------------------------------------------------------
!  TITLE: CS260 Lab9 lesson 1
!  AUTHOR: Ryan Shipp
!  CLASS: CSCI260A
!  DATE WRITTEN: 03.26.2014
!  LAST REVISION: 03.26.2014
!  DESCRIPTION: Play the lucky 7 dice game.
!  VARIABLES USED:
!    NAME:       TYPE:     COMMENT:
!  d1            INTEGER   Value of dice 1.
!  d2            INTEGER   Value of dice 2.
!  bet           INTEGER   How much to bet.
!  ch            INTEGER   User's choice.
!  amount        INTEGER   Amount in the bank.
!  pay           INTEGER   How much to pay the user.
!  total         INTEGER   Total d1+d2.
!  x             REAL      Random.
!  ans           CHARACTER User's answer.
!---------------------------------------------------------------------------

Program Lucky_7

Implicit None  !Must explicitly declare all variables

! Declare the variables and initialize.
INTEGER   :: d1, d2, bet, ch, amount, pay, total
REAL      :: x
CHARACTER :: ans


! Code the Problem Here
    amount = 100

    CALL RANDOM_SEED
    DO
        CALL getBet(bet, ch)
        CALL RANDOM_NUMBER(x)
        d1 = INT(x * 6) +1
        CALL RANDOM_NUMBER(x)
        d2 = INT(x * 6) +1
        total = d1 + d2

        WRITE(*,*) "Dice 1's value is", d1
        WRITE(*,*) "Dice 2's value is", d2
        WRITE(*,*)"*****************************************************"
        WRITE(*,*) "The total amount is", total
        WRITE(*,*)"*****************************************************"
        
        IF (total .LE. 6 .AND. ch .EQ. 1) THEN
            pay = bet
            WRITE(*,*) "You win! $", pay
        ELSE IF (total .EQ. 7 .AND. ch .EQ. 2) THEN
            pay = 3 * bet
            WRITE(*,*) "You win! $", pay
        ELSE IF (total .GE. 8 .AND. ch .EQ. 3) THEN
            pay = bet
            WRITE(*,*) "You win! $", pay
        ELSE
            pay = -1 * bet
            WRITE(*,*) "You lose. $", pay
        END IF

        amount = amount + pay
        WRITE(*,*) "You have $", amount, "to work with"
        IF (amount .GE. 0) THEN
            WRITE(*,*) "Would you like to continue the game?? (y/n)"
            READ(*,*) ans
            DO
                IF (ans .EQ. 'y')EXIT
                IF (ans .EQ. 'n')STOP
                WRITE(*,*)"You entered an invalid choice, choose again"
                READ(*,*) ans
            END DO
        ELSE
            WRITE(*,*) "Game Over"
            WRITE(*,*) "Expect a visit from the collectors"
            STOP
        END IF

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

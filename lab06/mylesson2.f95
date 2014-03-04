!--------------------------------------------------------------------------
!  TITLE: CS260 Lab6 lesson 2
!  AUTHOR: Ryan Shipp
!  CLASS: CSCI260A
!  DATE WRITTEN: 02.19.2014
!  LAST REVISION: 02.19.2014
!  DESCRIPTION: An encoding/decoding algorithm.
!  VARIABLES USED:
!    NAME:           TYPE:     COMMENT:
!  message           CHARACTER The input message.
!  resultMessage     CHARACTER The output message.
!  ans               INTEGER   The user'c choice.
!  key               INTEGER   A key value.
!  i                 INTEGER   A loop counter.
!---------------------------------------------------------------------------

Program decoderRing

Implicit None  !Must explicitly declare all variables

! Declare the variables and initialize.
    CHARACTER(len=120) :: message, resultMessage = ""
    INTEGER            :: ans, key, i

! Code the Problem Here
    WRITE(*,*) "Enter 0 to encode or 1 to decode."
    READ(*,*) ans
    WRITE(*,*) "Enter a number from 1 to 20 to use as a key."
    READ(*,*) key
    WRITE(*,*) "Enter the message."

    READ(*,90) message
90  FORMAT(A120)

    IF (ans .EQ. 0) THEN
        DO i = 1, LEN_TRIM(message)
            resultMessage(i:i) = ACHAR(MOD(IACHAR(message(i:i))+key-32,94)+32)
        END DO
    ELSE
        DO i = 1, LEN_TRIM(message)
            resultMessage(i:i) = ACHAR(MOD(IACHAR(message(i:i))-key-32,94)+32)
        END DO
    END IF

    WRITE(*,*) "Result:"
    WRITE(*,*) resultMessage

! Say Goodbye
   Write(*,*)
   Write(*,*) ' Have a Great Afternoon!!! '
   Write(*,*)

End Program

!--------------------------------------------------------------------------
!  Header section:
!  TITLE: CSCI260 Lab 3 Lesson 2
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

PROGRAM Lab3Lesson2

IMPLICIT NONE  !Must explicitly declare all variables

! Declare the variables.
   CHARACTER(len=8) :: user1, user2, rock, paper, scissors, lizard, spock

! Begin your code on the next line

   ! Initialize strings for comparison.
   rock = "rock    " 
   paper = "paper   "
   scissors = "scissors"
   lizard = "lizard  "
   spock = "spock   "

   ! Prompt for input.
   WRITE(*,*) "User 1's choice:"
   READ(*,*) user1
   WRITE(*,*) "User 2's choice:"
   READ(*,*) user2

   ! Determine who won.
   IF (user1 .EQ. scissors .AND. user2 .EQ. paper) THEN
      WRITE(*,*) "Scissors cuts paper. User 1 wins."
   ELSE IF (user1 .EQ. paper .AND. user2 .EQ. rock) THEN
      WRITE(*,*) "Paper covers rock. User 1 wins."
   ELSE IF (user1 .EQ. rock .AND. user2 .EQ. lizard) THEN
      WRITE(*,*) "Rock crushes lizard. User 1 wins."
   ELSE IF (user1 .EQ. lizard .AND. user2 .EQ. spock) THEN
      WRITE(*,*) "Lizard poisons Spock. User 1 wins."
   ELSE IF (user1 .EQ. spock .AND. user2 .EQ. scissors) THEN
      WRITE(*,*) "Spock smashes scissors. User 1 wins."
   ELSE IF (user1 .EQ. scissors .AND. user2 .EQ. lizard) THEN
      WRITE(*,*) "Scissors decapitate lizard. User 1 wins."
   ELSE IF (user1 .EQ. lizard .AND. user2 .EQ. paper) THEN
      WRITE(*,*) "Lizard eats paper. User 1 wins."
   ELSE IF (user1 .EQ. paper .AND. user2 .EQ. spock) THEN
      WRITE(*,*) "Paper disproves Spock. User 1 wins."
   ELSE IF (user1 .EQ. spock .AND. user2 .EQ. rock) THEN
      WRITE(*,*) "Spock vaporizes rock. User 1 wins."
   ELSE IF (user1 .EQ. rock .AND. user2 .EQ. scissors) THEN
      WRITE(*,*) "Rock crushes scissors. User 1 wins."
   ELSE IF (user2 .EQ. scissors .AND. user1 .EQ. paper) THEN
      WRITE(*,*) "Scissors cuts paper. User 2 wins."
   ELSE IF (user2 .EQ. paper .AND. user1 .EQ. rock) THEN
      WRITE(*,*) "Paper covers rock. User 2 wins."
   ELSE IF (user2 .EQ. rock .AND. user1 .EQ. lizard) THEN
      WRITE(*,*) "Rock crushes lizard. User 2 wins."
   ELSE IF (user2 .EQ. lizard .AND. user1 .EQ. spock) THEN
      WRITE(*,*) "Lizard poisons Spock. User 2 wins."
   ELSE IF (user2 .EQ. spock .AND. user1 .EQ. scissors) THEN
      WRITE(*,*) "Spock smashes scissors. User 2 wins."
   ELSE IF (user2 .EQ. scissors .AND. user1 .EQ. lizard) THEN
      WRITE(*,*) "Scissors decapitate lizard. User 2 wins."
   ELSE IF (user2 .EQ. lizard .AND. user1 .EQ. paper) THEN
      WRITE(*,*) "Lizard eats paper. User 2 wins."
   ELSE IF (user2 .EQ. paper .AND. user1 .EQ. spock) THEN
      WRITE(*,*) "Paper disproves Spock. User 2 wins."
   ELSE IF (user2 .EQ. spock .AND. user1 .EQ. rock) THEN
      WRITE(*,*) "Spock vaporizes rock. User 2 wins."
   ELSE IF (user2 .EQ. rock .AND. user1 .EQ. scissors) THEN
      WRITE(*,*) "Rock crushes scissors. User 2 wins."
   ELSE
      WRITE(*,*) "Nobody wins."
   END IF
      

! Now let's add a little class to our program
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Day!!! '
   WRITE(*,*)

   STOP
END PROGRAM !Lab3Lesson2

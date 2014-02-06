!--------------------------------------------------------------------------
!  Header section:
!  TITLE: CSCI260 Lab 4 Lesson 2
!  AUTHOR: Ryan Shipp
!  CLASS:  CSCI260A
!  DATE WRITTEN: 02.05.2014
!  LAST REVISION: 02.05.2014
!  DESCRIPTION: This program demonstrates  
!
!  VARIABLES USED:
!       NAME:           TYPE:           COMMENT:
!  income               REAL            User income.
!  tax                  REAL            Tax added.
!  levy                 REAL            Medicare Levy.
!  total                REAL            Total tax payable.
!---------------------------------------------------------------------------

PROGRAM Lab4Lesson2

IMPLICIT NONE  !Must explicitly declare all variables

! Declare the variables.
    REAL    :: income, tax, levy, total

! Begin your code on the next line
    WRITE(*,*) "Please enter your income level."
    READ(*,*) income
    levy = (income * 0.015)
    IF (income < 6000) THEN
        tax = 0
    ELSE IF (income < 20000) THEN
        tax = (income - 6000) * 0.17
    ELSE IF (income < 50000) THEN
        tax = 2380 + (income - 20000) * 0.30
    ELSE IF (income < 60000) THEN
        tax = 11380 + (income - 50000) * 0.42
    ELSE
        tax = 15580 + (income - 50000) * 0.47
    END IF    
    total = tax + levy

    WRITE(*,*) "Income tax:", tax
    WRITE(*,*) "Medicare levy:", levy
    WRITE(*,*) "Total tax payable:", total

! Now let's add a little class to our program
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Day!!! '
   WRITE(*,*)

   STOP
END PROGRAM !Lab4Lesson2

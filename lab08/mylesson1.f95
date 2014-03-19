!--------------------------------------------------------------------------
!  TITLE: CS260 Lab8 Lesson 1
!  AUTHOR: Ryan Shipp
!  CLASS: CSCI260A
!  DATE WRITTEN: 03.18.2014
!  LAST REVISION: 03.18.2014
!  DESCRIPTION: Familiarize yourself with file I/O syntax.
!  VARIABLES USED:
!    NAME:           TYPE:     COMMENT:
!  n                 INTEGER   Total lines
!  err               INTEGER   Error value
!  sumx              REAL      Sum of x
!  sumy              REAL      Sum of y
!  sumxs             REAL      Sum of x**2
!  sumxy             REAL      Sum of x*y
!  x                 REAL      x value
!  y                 REAL      y value
!  m                 REAL      Slope
!  b                 REAL      Y-intercept
!---------------------------------------------------------------------------
PROGRAM Least_Squares_Lab
IMPLICIT NONE  !Must explicitly declare all variables
! Declare the variables and initialize.
    INTEGER :: n, err
    REAL    :: sumx, sumy, sumxs, sumxy, x, y, m, b

! Code here
    sumx = 0
    sumy = 0
    sumxs = 0
    sumxy = 0
    n = 0
    err = 0
    OPEN(1, file='inData.dat', action='read')
    DO WHILE (err .EQ. 0)
        READ(1,*, iostat=err) x, y
        sumx = sumx + x
        sumy = sumy + y
        sumxs = sumxs + x**2
        sumxy = sumxy + x*y
        n = n + 1
    END DO

    m = (sumxy - sumx*(sumy/n))/(sumxs - sumx*(sumx/n))
    b = (sumy/n) - m*(sumy/n)

    WRITE(*,*) "Number of values", n
    WRITE(*,*) "Slope", m
    WRITE(*,*) "Y-intercept", b

! Say Goodbye
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Afternoon!!! '
   WRITE(*,*)

END PROGRAM

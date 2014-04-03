!--------------------------------------------------------------------------
!  TITLE: CS260 Lab10 lesson 2
!  AUTHOR: Ryan Shipp
!  CLASS: CSCI260A
!  DATE WRITTEN: 04.02.2014
!  LAST REVISION: 04.02.2014
!  DESCRIPTION: Work with two dimensional arrays in Fortran.
!  VARIABLES USED:
!    NAME:       TYPE:     COMMENT:
!  len           INTEGER   Length of arrays.
!  err           INTEGER   Error value.
!  i             INTEGER   Array index 1.
!  j             INTEGER   Array index 2.
!  gtemp         INTEGER   Temp value for swapping grades.
!  grades        INTEGER   2-D array to hold grades.
!  ntemp         CHARACTER Temp value for swapping names.
!  grades        CHARACTER 1-D array to hold names.
!  avg           REAL      Average grade.
!---------------------------------------------------------------------------

Program Sort_Grades

Implicit None  !Must explicitly declare all variables

! Declare the variables and initialize.
    INTEGER                          :: len, err, i, j, gtemp
    CHARACTER(len=30)                :: ntemp
    REAL                             :: avg
    INTEGER, DIMENSION(50,3)         :: grades
    CHARACTER(len=30), DIMENSION(50) :: names

! Code the Problem Here

    ! Read in the file.
    len = 1
    err = 0
    OPEN(1, file='names.dat', action='read')
    DO WHILE (err .EQ. 0)
        READ(1, "(A24,I2,2X,I2,2X,I2)", iostat=err) names(len), grades(len,1), grades(len,2), grades(len,3)
        len = len + 1
    END DO

    ! Sort the data by username.
    DO i = 2, len
        j = i
        DO WHILE (j .GT. 1 .AND. names(j-1) .GT. names(j))
            ! swap
            ntemp = names(j)
            names(j) = names(j-1)
            names(j-1) = ntemp

            gtemp = grades(j,1)
            grades(j,1) = grades(j-1,1)
            grades(j-1,1) = gtemp
            gtemp = grades(j,2)
            grades(j,2) = grades(j-1,2)
            grades(j-1,2) = gtemp
            gtemp = grades(j,3)
            grades(j,3) = grades(j-1,3)
            grades(j-1,3) = gtemp

            j = j - 1
        END DO
    END DO

    ! Print the results.
    WRITE(*,*) "Name               q1    q2    q3    avg   "
    WRITE(*,*) "-------------------------------------------"
    DO i = 2, len-1
        avg = real(grades(i,1) + grades(i,2) + grades(i,3)) / 3.0
        WRITE(*,"(1X,A19,I2,4X,I2,4X,I2,4X,F4.1)") names(i), grades(i,1), grades(i,2), grades(i,3), avg
    END DO

! Say Goodbye
   Write(*,*)
   Write(*,*) ' Have a Great Afternoon!!! '
   Write(*,*)

End Program   !Sort_Grades

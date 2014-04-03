!--------------------------------------------------------------------------
!  TITLE: CS260 Lab10 lesson 1
!  AUTHOR: Ryan Shipp
!  CLASS: CSCI260A
!  DATE WRITTEN: 04.02.2014
!  LAST REVISION: 04.02.2014
!  DESCRIPTION: Work with two dimensional arrays in Fortran.
!  VARIABLES USED:
!    NAME:       TYPE:     COMMENT:
!  matrix1h      INTEGER   Height of matrix 1.
!  matrix1w      INTEGER   Width of matrix 1.
!  matrix2h      INTEGER   Height of matrix 2.
!  matrix2w      INTEGER   Width of matrix 2.
!  m             INTEGER   Height of matrix 1.
!  n             INTEGER   Width of matrix 1, height of matrix 2.
!  q             INTEGER   Width of matrix 2.
!  i             INTEGER   Index 1.
!  j             INTEGER   Index 2.
!  k             INTEGER   Index 3.
!  sum           INTEGER   Sum.
!---------------------------------------------------------------------------

Program Matrix_Mult

Implicit None  !Must explicitly declare all variables

! Declare the variables and initialize.
    INTEGER :: matrix1h, matrix1w, matrix2h, matrix2w, m, n, q, i, j, k, sum
    INTEGER, DIMENSION(100,100) :: a, b, c

! Code the Problem Here
    WRITE(*,*) "Height of first matrix"
    READ(*,*) matrix1h
    WRITE(*,*) "Width of first matrix"
    READ(*,*) matrix1w
    WRITE(*,*) "Height of second matrix"
    READ(*,*) matrix2h
    WRITE(*,*) "Width of second matrix"
    READ(*,*) matrix2w

    ! Verify mxn size.
    IF (matrix1w .EQ. matrix2h) THEN
        ! mxn
        WRITE(*,*) "Matrix sizes are correct."
    ELSE
        ! not mxn
        WRITE(*,*) "Matrix sizes incorrect."
        STOP
    END IF

    ! Set up variables.
    m = matrix1h
    n = matrix1w
    q = matrix2w

    ! Read in the matrices.
    DO i = 1, m
        DO j = 1, n
            WRITE(*,*) "Enter value for matrix 1:", i, ",", j
            READ(*,*) a(i,j)
        END DO
    END DO
    DO i = 1, n
        DO j = 1, q
            WRITE(*,*) "Enter value for matrix 2:", i, ",", j
            READ(*,*) b(i,j)
        END DO
    END DO

    ! Do matrix multiplication.
    DO i = 1, m
        DO j = 1, q
            sum = 0
            DO k = 1, n
                sum = sum + a(i,k)*b(k,j)
            END DO
            c(i,j) = sum
        END DO
    END DO

    ! Write out results.
    DO i = 1, m
        DO j = 1, q
            WRITE(*,*) "Result for", i, ",", j, ":", c(i, j)
        END DO
    END DO

! Say Goodbye
   Write(*,*)
   Write(*,*) ' Have a Great Afternoon!!! '
   Write(*,*)


End Program   !Matrix_Mult

!--------------------------------------------------------------------------
!  TITLE: CS260 Lab8 Lesson 2
!  AUTHOR: Ryan Shipp
!  CLASS: CSCI260A
!  DATE WRITTEN: 03.18.2014
!  LAST REVISION: 03.18.2014
!  DESCRIPTION: Familiarize yourself with file I/O syntax.
!  VARIABLES USED:
!    NAME:           TYPE:     COMMENT:
!  list1             INTEGER   Array of integers
!  list2             INTEGER   Array of integers
!  len1              INTEGER   Length of list 1
!  len2              INTEGER   Length of list 2
!  err               INTEGER   Error value
!  index1            INTEGER   Index of list 1
!  index2            INTEGER   Index of list 2
!---------------------------------------------------------------------------
PROGRAM File_Merge_Lab
IMPLICIT NONE  !Must explicitly declare all variables
! Declare the variables and initialize.
    INTEGER, DIMENSION(100) :: list1, list2
    INTEGER                 :: len1, len2, err, index1, index2

! Code here
    len1 = 0
    len2 = 0
    err = 0
    OPEN(1, file='location1.dat', action='read')
    DO WHILE (err .EQ. 0)
        READ(1,*, iostat=err) list1(len1)
        len1 = len1 + 1
    END DO
    err = 0
    OPEN(2, file='location2.dat', action='read')
    DO WHILE (err .EQ. 0)
        READ(2,*, iostat=err) list2(len2)
        len2 = len2 + 1
    END DO

    index1 = 0
    index2 = 0
    DO WHILE ((index1 .LT. len1-1) .OR. (index2 .LT. len2-1))
        IF (list1(index1) .LT. list2(index2)) THEN
            WRITE(*,*) list1(index1)
            index1 = index1 + 1
        ELSEIF (list1(index1) .GT. list2(index2)) THEN
            WRITE(*,*) list2(index2)
            index2 = index2 + 1
        ELSE
            WRITE(*,*) list1(index1)
            WRITE(*,*) list2(index2)
            index1 = index1 + 1
            index2 = index2 + 1
        END IF
    END DO

! Say Goodbye
   WRITE(*,*)
   WRITE(*,*) ' Have a Great Afternoon!!! '
   WRITE(*,*)

END PROGRAM

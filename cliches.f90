SUBROUTINE Cliches
IMPLICIT NONE
INTEGER :: Choice, Roll

TYPE CLICHE
  CHARACTER(LEN = 50) :: TITLE
  CHARACTER(LEN = 250) :: TEXT
END TYPE CLICHE


type(CLICHE), dimension(2) :: list

list(1)%title = "Anywhere Is Within Walking Distance If You Have The Time Axiom"
list(1)%text = "Immediately after finding a potion, spell or gem of transportation, a wizened "

list(2)%title = "Gift of Gab Rule"
list(2)%text = "People play characters whose articulateness is inversely proportional to their &
                &own."

Choice = Roll(ubound(list))

WRITE (*,'(1X,A)') list(Choice)%title
WRITE (*,'(1X,A)') "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-"
WRITE (*,'(1X,A)') list(Choice)%text
! TODO: Pretty print the text (wrap @ <len>)


! Original versions removed for copyright reasons
! New versions created from the fevered brain of devICTers...
!SELECT CASE(Choice)
!  CASE (1)
!    WRITE (*,'(1X,A)') "Anywhere Is Within Walking Distance If You Have The Time Axiom"
!    WRITE (*,'(1X,A)') "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-"
!    WRITE (*,'(1X,A)') "Immediately after finding a potion, spell or gem of transportation, a wizened "
!    WRITE (*,'(1X,A)') "oldster appears and wearily states 'That's all well and good, but anywhere is "
!    WRITE (*,'(1X,A)') "within walking distance if you have the time.' The oldster steals the key to  "
!    WRITE (*,'(1X,A)') "the transport item and disappears.                                            "
!
!  CASE (2)
!    WRITE (*,'(1X,A)') "Gift of Gab Rule"
!    WRITE (*,'(1X,A)') "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-"
!    WRITE (*,'(1X,A)') "People play characters whose articulateness is inversely proportional to      "
!    WRITE (*,'(1X,A)') "their own.                                                                    "
!END SELECT

END SUBROUTINE Cliches

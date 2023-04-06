C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjM(2,3)*ProjM(4,1)
C     
      SUBROUTINE FFFF1P1N_1(F2, F3, F4, COUP,F1)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(6)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(*)
      COMPLEX*16 TMP19
      TMP19 = (F2(3)*F3(3)+F2(4)*F3(4))
      F1(3)= COUP*(-CI )* F4(3)*TMP19
      F1(4)= COUP*(-CI )* F4(4)*TMP19
      F1(5)= COUP*0D0
      F1(6)= COUP*0D0
      END


C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjM(2,3)*ProjM(4,1)
C     
      SUBROUTINE FFFF1_15_16_17_5_9P1N_1(F2, F3, F4, COUP1, COUP2,
     $  COUP3, COUP4, COUP5, COUP6,F1)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP1
      COMPLEX*16 COUP2
      COMPLEX*16 COUP3
      COMPLEX*16 COUP4
      COMPLEX*16 COUP5
      COMPLEX*16 COUP6
      COMPLEX*16 F1(6)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(*)
      COMPLEX*16 FTMP(6)
      INTEGER*4 I
      CALL FFFF1P1N_1(F2,F3,F4,COUP1,F1)
      CALL FFFF15P1N_1(F2,F3,F4,COUP2,FTMP)
      DO I = 3, 6
        F1(I) = F1(I) + FTMP(I)
      ENDDO
      CALL FFFF16P1N_1(F2,F3,F4,COUP3,FTMP)
      DO I = 3, 6
        F1(I) = F1(I) + FTMP(I)
      ENDDO
      CALL FFFF17P1N_1(F2,F3,F4,COUP4,FTMP)
      DO I = 3, 6
        F1(I) = F1(I) + FTMP(I)
      ENDDO
      CALL FFFF5P1N_1(F2,F3,F4,COUP5,FTMP)
      DO I = 3, 6
        F1(I) = F1(I) + FTMP(I)
      ENDDO
      CALL FFFF9P1N_1(F2,F3,F4,COUP6,FTMP)
      DO I = 3, 6
        F1(I) = F1(I) + FTMP(I)
      ENDDO
      END


C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjM(2,3)*ProjM(4,1)
C     
      SUBROUTINE FFFF1_15_16_17_9P1N_1(F2, F3, F4, COUP1, COUP2, COUP3
     $ , COUP4, COUP5,F1)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP1
      COMPLEX*16 COUP2
      COMPLEX*16 COUP3
      COMPLEX*16 COUP4
      COMPLEX*16 COUP5
      COMPLEX*16 COUP6
      COMPLEX*16 F1(6)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(*)
      COMPLEX*16 FTMP(6)
      INTEGER*4 I
      CALL FFFF1P1N_1(F2,F3,F4,COUP1,F1)
      CALL FFFF15P1N_1(F2,F3,F4,COUP2,FTMP)
      DO I = 3, 6
        F1(I) = F1(I) + FTMP(I)
      ENDDO
      CALL FFFF16P1N_1(F2,F3,F4,COUP3,FTMP)
      DO I = 3, 6
        F1(I) = F1(I) + FTMP(I)
      ENDDO
      CALL FFFF17P1N_1(F2,F3,F4,COUP4,FTMP)
      DO I = 3, 6
        F1(I) = F1(I) + FTMP(I)
      ENDDO
      CALL FFFF9P1N_1(F2,F3,F4,COUP5,FTMP)
      DO I = 3, 6
        F1(I) = F1(I) + FTMP(I)
      ENDDO
      END



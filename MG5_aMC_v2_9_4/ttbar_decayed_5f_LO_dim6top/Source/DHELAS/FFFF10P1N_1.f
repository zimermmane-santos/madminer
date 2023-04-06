C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjM(2,1)*ProjP(4,3)
C     
      SUBROUTINE FFFF10P1N_1(F2, F3, F4, COUP,F1)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(6)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(*)
      COMPLEX*16 TMP8
      TMP8 = (F4(5)*F3(5)+F4(6)*F3(6))
      F1(3)= COUP*(-CI )* TMP8*F2(3)
      F1(4)= COUP*(-CI )* TMP8*F2(4)
      F1(5)= COUP*0D0
      F1(6)= COUP*0D0
      END


C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjM(2,1)*ProjP(4,3)
C     
      SUBROUTINE FFFF10_14_18_19_6_8P1N_1(F2, F3, F4, COUP1, COUP2,
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
      CALL FFFF10P1N_1(F2,F3,F4,COUP1,F1)
      CALL FFFF14P1N_1(F2,F3,F4,COUP2,FTMP)
      DO I = 3, 6
        F1(I) = F1(I) + FTMP(I)
      ENDDO
      CALL FFFF18P1N_1(F2,F3,F4,COUP3,FTMP)
      DO I = 3, 6
        F1(I) = F1(I) + FTMP(I)
      ENDDO
      CALL FFFF19P1N_1(F2,F3,F4,COUP4,FTMP)
      DO I = 3, 6
        F1(I) = F1(I) + FTMP(I)
      ENDDO
      CALL FFFF6P1N_1(F2,F3,F4,COUP5,FTMP)
      DO I = 3, 6
        F1(I) = F1(I) + FTMP(I)
      ENDDO
      CALL FFFF8P1N_1(F2,F3,F4,COUP6,FTMP)
      DO I = 3, 6
        F1(I) = F1(I) + FTMP(I)
      ENDDO
      END



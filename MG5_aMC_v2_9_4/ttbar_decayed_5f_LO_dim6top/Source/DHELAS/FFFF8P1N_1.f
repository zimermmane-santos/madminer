C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjM(4,3)*ProjP(2,1)
C     
      SUBROUTINE FFFF8P1N_1(F2, F3, F4, COUP,F1)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(6)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(*)
      COMPLEX*16 TMP13
      TMP13 = (F4(3)*F3(3)+F4(4)*F3(4))
      F1(3)= COUP*0D0
      F1(4)= COUP*0D0
      F1(5)= COUP*(-CI )* TMP13*F2(5)
      F1(6)= COUP*(-CI )* TMP13*F2(6)
      END



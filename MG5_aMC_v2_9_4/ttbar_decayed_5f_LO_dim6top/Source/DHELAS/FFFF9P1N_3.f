C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjP(2,3)*ProjP(4,1)
C     
      SUBROUTINE FFFF9P1N_3(F1, F2, F4, COUP,F3)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(6)
      COMPLEX*16 F4(*)
      COMPLEX*16 TMP24
      TMP24 = (F1(5)*F4(5)+F1(6)*F4(6))
      F3(3)= COUP*0D0
      F3(4)= COUP*0D0
      F3(5)= COUP*(-CI )* TMP24*F2(5)
      F3(6)= COUP*(-CI )* TMP24*F2(6)
      END



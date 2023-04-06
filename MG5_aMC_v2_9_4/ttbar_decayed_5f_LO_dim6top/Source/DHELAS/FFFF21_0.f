C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(-1,-3,-2)*Gamma(-1,2,-3)*ProjM(-2,1)*ProjM(4,3) +
C      Gamma(-1,-3,-2)*Gamma(-1,4,-3)*ProjM(-2,3)*ProjM(2,1)
C     
      SUBROUTINE FFFF21_0(F1, F2, F3, F4, COUP,VERTEX)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(*)
      COMPLEX*16 TMP0
      COMPLEX*16 TMP13
      COMPLEX*16 VERTEX
      TMP0 = (F2(3)*F1(3)+F2(4)*F1(4))
      TMP13 = (F4(3)*F3(3)+F4(4)*F3(4))
      VERTEX = COUP*(-8D0 * CI * TMP0*TMP13)
      END



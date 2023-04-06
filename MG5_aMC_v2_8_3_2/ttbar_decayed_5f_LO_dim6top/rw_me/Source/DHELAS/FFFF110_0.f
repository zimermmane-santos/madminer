C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(-1,-3,-2)*Gamma(-1,2,-3)*ProjP(-2,1)*ProjP(4,3) +
C      Gamma(-1,-3,-2)*Gamma(-1,4,-3)*ProjP(-2,3)*ProjP(2,1)
C     
      SUBROUTINE FFFF110_0(F1, F2, F3, F4, COUP,VERTEX)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(*)
      COMPLEX*16 TMP16
      COMPLEX*16 TMP19
      COMPLEX*16 VERTEX
      TMP16 = (F2(5)*F1(5)+F2(6)*F1(6))
      TMP19 = (F4(5)*F3(5)+F4(6)*F3(6))
      VERTEX = COUP*(-8D0 * CI * TMP16*TMP19)
      END



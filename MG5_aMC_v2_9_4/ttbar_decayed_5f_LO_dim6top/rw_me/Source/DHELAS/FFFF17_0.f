C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(-1,2,-3)*Gamma(-1,4,-2)*ProjM(-2,1)*ProjP(-3,3)
C     
      SUBROUTINE FFFF17_0(F1, F2, F3, F4, COUP,VERTEX)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(*)
      COMPLEX*16 TMP28
      COMPLEX*16 VERTEX
      TMP28 = (F1(3)*F2(3)*(F4(5)*F3(5)+F4(6)*F3(6))+F1(4)*F2(4)*(F4(5)
     $ *F3(5)+F4(6)*F3(6)))
      VERTEX = COUP*(-2D0 * CI * TMP28)
      END



C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(-1,2,-3)*Gamma(-1,4,-2)*ProjM(-2,3)*ProjP(-3,1)
C     
      SUBROUTINE FFFF14P1N_3(F1, F2, F4, COUP,F3)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(6)
      COMPLEX*16 F4(*)
      F3(3)= COUP*(-2D0 )* CI * F2(3)*(F1(5)*F4(5)+F1(6)*F4(6))
      F3(4)= COUP*(-2D0 )* CI * F2(4)*(F1(5)*F4(5)+F1(6)*F4(6))
      F3(5)= COUP*0D0
      F3(6)= COUP*0D0
      END



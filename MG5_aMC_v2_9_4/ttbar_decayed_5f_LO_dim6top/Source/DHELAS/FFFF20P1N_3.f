C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(-2,-6,-5)*Gamma(-2,-4,-3)*Gamma(-1,2,-4)*Gamma(-1,4,-6)*Pro
C     jP(-5,3)*ProjP(-3,1)
C     
      SUBROUTINE FFFF20P1N_3(F1, F2, F4, COUP,F3)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(6)
      COMPLEX*16 F4(*)
      F3(3)= COUP*0D0
      F3(4)= COUP*0D0
      F3(5)= COUP*(-8D0 )* CI * F1(6)*(-F2(5)*F4(6)+F2(6)*F4(5))
      F3(6)= COUP*(-8D0 )* CI * F1(5)*(F2(5)*F4(6)-F2(6)*F4(5))
      END



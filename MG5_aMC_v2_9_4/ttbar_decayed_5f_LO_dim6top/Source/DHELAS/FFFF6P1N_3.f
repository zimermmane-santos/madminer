C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(-1,2,-2)*Gamma(-1,4,-3)*ProjM(-3,3)*ProjM(-2,1)
C     
      SUBROUTINE FFFF6P1N_3(F1, F2, F4, COUP,F3)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(6)
      COMPLEX*16 F4(*)
      F3(3)= COUP*(-2D0 )* CI * F1(4)*(-F2(5)*F4(6)+F2(6)*F4(5))
      F3(4)= COUP*(-2D0 )* CI * F1(3)*(F2(5)*F4(6)-F2(6)*F4(5))
      F3(5)= COUP*0D0
      F3(6)= COUP*0D0
      END



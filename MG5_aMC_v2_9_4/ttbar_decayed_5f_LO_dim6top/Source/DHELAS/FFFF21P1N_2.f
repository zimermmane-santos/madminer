C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(-1,-3,-2)*Gamma(-1,2,-3)*ProjM(-2,1)*ProjM(4,3) +
C      Gamma(-1,-3,-2)*Gamma(-1,4,-3)*ProjM(-2,3)*ProjM(2,1)
C     
      SUBROUTINE FFFF21P1N_2(F1, F3, F4, COUP,F2)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(6)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(*)
      COMPLEX*16 TMP13
      TMP13 = (F4(3)*F3(3)+F4(4)*F3(4))
      F2(3)= COUP*(-8D0 )* CI * F1(3)*TMP13
      F2(4)= COUP*(-8D0 )* CI * F1(4)*TMP13
      F2(5)= COUP*0D0
      F2(6)= COUP*0D0
      END



C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(3,2,-1)*ProjM(-1,1) + 4*Gamma(3,2,-1)*ProjP(-1,1)
C     
      SUBROUTINE FFV8P1N_1(F2, V3, COUP,F1)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(6)
      COMPLEX*16 F2(*)
      COMPLEX*16 V3(*)
      F1(3)= COUP*(-CI)*(F2(5)*(V3(3)+V3(6))+F2(6)*(V3(4)+CI*(V3(5))))
      F1(4)= COUP*CI*(F2(5)*(-V3(4)+CI*(V3(5)))+F2(6)*(-V3(3)+V3(6)))
      F1(5)= COUP*4D0 * CI*(F2(3)*(-V3(3)+V3(6))+F2(4)*(V3(4)+CI*(V3(5)
     $ )))
      F1(6)= COUP*(-4D0 * CI)*(F2(3)*(-V3(4)+CI*(V3(5)))+F2(4)*(V3(3)
     $ +V3(6)))
      END



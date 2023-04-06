C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(3,2,-2)*Gamma(4,-2,-1)*ProjM(-1,1) -
C      Gamma(3,-2,-1)*Gamma(4,2,-2)*ProjM(-1,1) +
C      Gamma(3,2,-2)*Gamma(4,-2,-1)*ProjP(-1,1) -
C      Gamma(3,-2,-1)*Gamma(4,2,-2)*ProjP(-1,1)
C     
      SUBROUTINE FFVV4P1N_4(F1, F2, V3, COUP,V4)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 V3(*)
      COMPLEX*16 V4(6)
      V4(3)= COUP*(-2D0 * CI)*(V3(4)*(-F1(3)*F2(4)-F1(4)*F2(3)+F1(5)
     $ *F2(6)+F1(6)*F2(5))+(V3(5)*(-CI*(F1(3)*F2(4)+F1(6)*F2(5))+CI
     $ *(F1(4)*F2(3)+F1(5)*F2(6)))+V3(6)*(-F1(3)*F2(3)-F1(6)*F2(6)
     $ +F1(4)*F2(4)+F1(5)*F2(5))))
      V4(4)= COUP*(-2D0 * CI)*(V3(3)*(F1(3)*F2(4)+F1(4)*F2(3)-F1(5)
     $ *F2(6)-F1(6)*F2(5))+(V3(5)*(+CI*(F1(3)*F2(3)+F1(5)*F2(5))-CI
     $ *(F1(4)*F2(4)+F1(6)*F2(6)))+V3(6)*(F1(3)*F2(4)+F1(5)*F2(6)-F1(4)
     $ *F2(3)-F1(6)*F2(5))))
      V4(5)= COUP*2D0*(V3(3)*(F1(3)*F2(4)+F1(6)*F2(5)-F1(4)*F2(3)-F1(5)
     $ *F2(6))+(V3(4)*(-F1(3)*F2(3)-F1(5)*F2(5)+F1(4)*F2(4)+F1(6)*F2(6)
     $ )+V3(6)*(F1(3)*F2(4)+F1(4)*F2(3)+F1(5)*F2(6)+F1(6)*F2(5))))
      V4(6)= COUP*2D0 * CI*(V3(3)*(-F1(3)*F2(3)-F1(6)*F2(6)+F1(4)*F2(4)
     $ +F1(5)*F2(5))+(V3(4)*(F1(3)*F2(4)+F1(5)*F2(6)-F1(4)*F2(3)-F1(6)
     $ *F2(5))+V3(5)*(+CI*(F1(3)*F2(4)+F1(4)*F2(3)+F1(5)*F2(6)+F1(6)
     $ *F2(5)))))
      END



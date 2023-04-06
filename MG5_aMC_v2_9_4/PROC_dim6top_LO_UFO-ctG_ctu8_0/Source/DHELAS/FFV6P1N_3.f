C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(3,2,-1)*ProjM(-1,1) + Gamma(3,2,-1)*ProjP(-1,1)
C     
      SUBROUTINE FFV6P1N_3(F1, F2, COUP,V3)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 V3(6)
      V3(3)= COUP*(-CI)*(F1(3)*F2(5)+F1(4)*F2(6)+F1(5)*F2(3)+F1(6)
     $ *F2(4))
      V3(4)= COUP*(-CI)*(F1(3)*F2(6)+F1(4)*F2(5)-F1(5)*F2(4)-F1(6)
     $ *F2(3))
      V3(5)= COUP*(-CI)*(+CI*(F1(3)*F2(6)+F1(6)*F2(3))-CI*(F1(4)*F2(5)
     $ +F1(5)*F2(4)))
      V3(6)= COUP*(-CI)*(F1(3)*F2(5)+F1(6)*F2(4)-F1(4)*F2(6)-F1(5)
     $ *F2(3))
      END



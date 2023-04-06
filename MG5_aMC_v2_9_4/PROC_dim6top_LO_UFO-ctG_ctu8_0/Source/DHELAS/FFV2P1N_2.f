C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(3,2,-1)*ProjM(-1,1)
C     
      SUBROUTINE FFV2P1N_2(F1, V3, COUP,F2)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(6)
      COMPLEX*16 V3(*)
      F2(3)= COUP*0D0
      F2(4)= COUP*0D0
      F2(5)= COUP*CI*(F1(3)*(-1D0)*(V3(3)+V3(6))+F1(4)*(-V3(4)+CI
     $ *(V3(5))))
      F2(6)= COUP*(-CI)*(F1(3)*(V3(4)+CI*(V3(5)))+F1(4)*(V3(3)-V3(6)))
      END


C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(3,2,-1)*ProjM(-1,1)
C     
      SUBROUTINE FFV2_8P1N_2(F1, V3, COUP1, COUP2,F2)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP1
      COMPLEX*16 COUP2
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(6)
      COMPLEX*16 FTMP(6)
      COMPLEX*16 V3(*)
      INTEGER*4 I
      CALL FFV2P1N_2(F1,V3,COUP1,F2)
      CALL FFV8P1N_2(F1,V3,COUP2,FTMP)
      DO I = 3, 6
        F2(I) = F2(I) + FTMP(I)
      ENDDO
      END



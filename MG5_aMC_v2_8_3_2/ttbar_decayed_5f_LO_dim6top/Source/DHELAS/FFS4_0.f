C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjM(2,1) + ProjP(2,1)
C     
      SUBROUTINE FFS4_0(F1, F2, S3, COUP,VERTEX)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 S3(*)
      COMPLEX*16 TMP13
      COMPLEX*16 TMP15
      COMPLEX*16 VERTEX
      TMP13 = (F1(5)*F2(5)+F1(6)*F2(6))
      TMP15 = (F1(3)*F2(3)+F1(4)*F2(4))
      VERTEX = COUP*(-S3(3)*(+CI*(TMP15+TMP13)))
      END



C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjM(2,1)
C     
      SUBROUTINE FFS1_3(F1, F2, COUP, M3, W3,S3)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      REAL*8 M3
      REAL*8 P3(0:3)
      COMPLEX*16 S3(3)
      COMPLEX*16 TMP0
      REAL*8 W3
      COMPLEX*16 DENOM
      S3(1) = +F1(1)+F2(1)
      S3(2) = +F1(2)+F2(2)
      P3(0) = -DBLE(S3(1))
      P3(1) = -DBLE(S3(2))
      P3(2) = -DIMAG(S3(2))
      P3(3) = -DIMAG(S3(1))
      TMP0 = (F2(3)*F1(3)+F2(4)*F1(4))
      DENOM = COUP/(P3(0)**2-P3(1)**2-P3(2)**2-P3(3)**2 - M3 * (M3 -CI
     $ * W3))
      S3(3)= DENOM*CI * TMP0
      END


C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjM(2,1)
C     
      SUBROUTINE FFS1_3_3(F1, F2, COUP1, COUP2, M3, W3,S3)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP1
      COMPLEX*16 COUP2
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      REAL*8 M3
      REAL*8 P3(0:3)
      COMPLEX*16 S3(3)
      COMPLEX*16 STMP(3)
      REAL*8 W3
      COMPLEX*16 DENOM
      INTEGER*4 I
      CALL FFS1_3(F1,F2,COUP1,M3,W3,S3)
      CALL FFS3_3(F1,F2,COUP2,M3,W3,STMP)
      DO I = 3, 3
        S3(I) = S3(I) + STMP(I)
      ENDDO
      END



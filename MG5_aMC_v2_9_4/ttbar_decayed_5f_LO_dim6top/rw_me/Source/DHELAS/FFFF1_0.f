C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjM(2,3)*ProjM(4,1)
C     
      SUBROUTINE FFFF1_0(F1, F2, F3, F4, COUP,VERTEX)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(*)
      COMPLEX*16 TMP24
      COMPLEX*16 TMP25
      COMPLEX*16 VERTEX
      TMP24 = (F4(3)*F1(3)+F4(4)*F1(4))
      TMP25 = (F3(3)*F2(3)+F3(4)*F2(4))
      VERTEX = COUP*(-CI * TMP24*TMP25)
      END


C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjM(2,3)*ProjM(4,1)
C     
      SUBROUTINE FFFF1_15_16_17_9_0(F1, F2, F3, F4, COUP1, COUP2,
     $  COUP3, COUP4, COUP5,VERTEX)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP1
      COMPLEX*16 COUP2
      COMPLEX*16 COUP3
      COMPLEX*16 COUP4
      COMPLEX*16 COUP5
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(*)
      COMPLEX*16 TMP
      COMPLEX*16 VERTEX
      CALL FFFF1_0(F1,F2,F3,F4,COUP1,VERTEX)
      CALL FFFF15_0(F1,F2,F3,F4,COUP2,TMP)
      VERTEX = VERTEX + TMP
      CALL FFFF16_0(F1,F2,F3,F4,COUP3,TMP)
      VERTEX = VERTEX + TMP
      CALL FFFF17_0(F1,F2,F3,F4,COUP4,TMP)
      VERTEX = VERTEX + TMP
      CALL FFFF9_0(F1,F2,F3,F4,COUP5,TMP)
      VERTEX = VERTEX + TMP
      END


C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     ProjM(2,3)*ProjM(4,1)
C     
      SUBROUTINE FFFF1_15_16_17_5_9_0(F1, F2, F3, F4, COUP1, COUP2,
     $  COUP3, COUP4, COUP5, COUP6,VERTEX)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP1
      COMPLEX*16 COUP2
      COMPLEX*16 COUP3
      COMPLEX*16 COUP4
      COMPLEX*16 COUP5
      COMPLEX*16 COUP6
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 F3(*)
      COMPLEX*16 F4(*)
      COMPLEX*16 TMP
      COMPLEX*16 VERTEX
      CALL FFFF1_0(F1,F2,F3,F4,COUP1,VERTEX)
      CALL FFFF15_0(F1,F2,F3,F4,COUP2,TMP)
      VERTEX = VERTEX + TMP
      CALL FFFF16_0(F1,F2,F3,F4,COUP3,TMP)
      VERTEX = VERTEX + TMP
      CALL FFFF17_0(F1,F2,F3,F4,COUP4,TMP)
      VERTEX = VERTEX + TMP
      CALL FFFF5_0(F1,F2,F3,F4,COUP5,TMP)
      VERTEX = VERTEX + TMP
      CALL FFFF9_0(F1,F2,F3,F4,COUP6,TMP)
      VERTEX = VERTEX + TMP
      END



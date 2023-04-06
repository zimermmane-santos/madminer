C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(3,2,-2)*Gamma(4,-2,-1)*ProjM(-1,1) -
C      Gamma(3,-2,-1)*Gamma(4,2,-2)*ProjM(-1,1) -
C      Gamma(3,2,-2)*Gamma(4,-2,-1)*ProjP(-1,1) +
C      Gamma(3,-2,-1)*Gamma(4,2,-2)*ProjP(-1,1)
C     
      SUBROUTINE FFVV2_0(F1, F2, V3, V4, COUP,VERTEX)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 TMP28
      COMPLEX*16 TMP29
      COMPLEX*16 TMP30
      COMPLEX*16 TMP31
      COMPLEX*16 V3(*)
      COMPLEX*16 V4(*)
      COMPLEX*16 VERTEX
      TMP28 = (F1(3)*(F2(3)*(V3(3)*(V4(3)+V4(6))+(V3(4)*(-1D0)*(V4(4)
     $ +CI*(V4(5)))+(V3(5)*(+CI*(V4(4))-V4(5))-V3(6)*(V4(3)+V4(6)))))
     $ +F2(4)*(V3(3)*(V4(4)+CI*(V4(5)))+(V3(4)*(-1D0)*(V4(3)+V4(6))
     $ +(V3(5)*(-1D0)*(+CI*(V4(3)+V4(6)))+V3(6)*(V4(4)+CI*(V4(5)))))))
     $ +F1(4)*(F2(3)*(V3(3)*(V4(4)-CI*(V4(5)))+(V3(4)*(-V4(3)+V4(6))
     $ +(V3(5)*(+CI*(V4(3))-CI*(V4(6)))+V3(6)*(-V4(4)+CI*(V4(5))))))
     $ +F2(4)*(V3(3)*(V4(3)-V4(6))+(V3(4)*(-V4(4)+CI*(V4(5)))+(V3(5)*(
     $ -1D0)*(+CI*(V4(4))+V4(5))+V3(6)*(V4(3)-V4(6)))))))
      TMP29 = (F1(3)*(F2(3)*(V3(3)*(V4(3)-V4(6))+(V3(4)*(-V4(4)+CI
     $ *(V4(5)))+(V3(5)*(-1D0)*(+CI*(V4(4))+V4(5))+V3(6)*(V4(3)-V4(6)))
     $ ))+F2(4)*(V3(3)*(-1D0)*(V4(4)+CI*(V4(5)))+(V3(4)*(V4(3)+V4(6))
     $ +(V3(5)*(+CI*(V4(3)+V4(6)))-V3(6)*(V4(4)+CI*(V4(5)))))))+F1(4)
     $ *(F2(3)*(V3(3)*(-V4(4)+CI*(V4(5)))+(V3(4)*(V4(3)-V4(6))+(V3(5)
     $ *(-CI*(V4(3))+CI*(V4(6)))+V3(6)*(V4(4)-CI*(V4(5))))))+F2(4)
     $ *(V3(3)*(V4(3)+V4(6))+(V3(4)*(-1D0)*(V4(4)+CI*(V4(5)))+(V3(5)*(
     $ +CI*(V4(4))-V4(5))-V3(6)*(V4(3)+V4(6)))))))
      TMP30 = (F1(5)*(F2(5)*(V3(3)*(V4(3)-V4(6))+(V3(4)*(-1D0)*(V4(4)
     $ +CI*(V4(5)))+(V3(5)*(+CI*(V4(4))-V4(5))+V3(6)*(V4(3)-V4(6)))))
     $ +F2(6)*(V3(3)*(-1D0)*(V4(4)+CI*(V4(5)))+(V3(4)*(V4(3)-V4(6))
     $ +(V3(5)*(+CI*(V4(3))-CI*(V4(6)))+V3(6)*(V4(4)+CI*(V4(5)))))))
     $ +F1(6)*(F2(5)*(V3(3)*(-V4(4)+CI*(V4(5)))+(V3(4)*(V4(3)+V4(6))
     $ +(V3(5)*(-1D0)*(+CI*(V4(3)+V4(6)))+V3(6)*(-V4(4)+CI*(V4(5))))))
     $ +F2(6)*(V3(3)*(V4(3)+V4(6))+(V3(4)*(-V4(4)+CI*(V4(5)))+(V3(5)*(
     $ -1D0)*(+CI*(V4(4))+V4(5))-V3(6)*(V4(3)+V4(6)))))))
      TMP31 = (F1(5)*(F2(5)*(V3(3)*(V4(3)+V4(6))+(V3(4)*(-V4(4)+CI
     $ *(V4(5)))+(V3(5)*(-1D0)*(+CI*(V4(4))+V4(5))-V3(6)*(V4(3)+V4(6)))
     $ ))+F2(6)*(V3(3)*(V4(4)+CI*(V4(5)))+(V3(4)*(-V4(3)+V4(6))+(V3(5)
     $ *(-CI*(V4(3))+CI*(V4(6)))-V3(6)*(V4(4)+CI*(V4(5)))))))+F1(6)
     $ *(F2(5)*(V3(3)*(V4(4)-CI*(V4(5)))+(V3(4)*(-1D0)*(V4(3)+V4(6))
     $ +(V3(5)*(+CI*(V4(3)+V4(6)))+V3(6)*(V4(4)-CI*(V4(5))))))+F2(6)
     $ *(V3(3)*(V4(3)-V4(6))+(V3(4)*(-1D0)*(V4(4)+CI*(V4(5)))+(V3(5)*(
     $ +CI*(V4(4))-V4(5))+V3(6)*(V4(3)-V4(6)))))))
      VERTEX = COUP*(-CI*(TMP28+TMP31)+CI*(TMP29+TMP30))
      END


C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(3,2,-2)*Gamma(4,-2,-1)*ProjM(-1,1) -
C      Gamma(3,-2,-1)*Gamma(4,2,-2)*ProjM(-1,1) -
C      Gamma(3,2,-2)*Gamma(4,-2,-1)*ProjP(-1,1) +
C      Gamma(3,-2,-1)*Gamma(4,2,-2)*ProjP(-1,1)
C     
      SUBROUTINE FFVV2_4_0(F1, F2, V3, V4, COUP1, COUP2,VERTEX)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP1
      COMPLEX*16 COUP2
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(*)
      COMPLEX*16 V3(*)
      COMPLEX*16 V4(*)
      COMPLEX*16 TMP
      COMPLEX*16 VERTEX
      CALL FFVV2_0(F1,F2,V3,V4,COUP1,VERTEX)
      CALL FFVV4_0(F1,F2,V3,V4,COUP2,TMP)
      VERTEX = VERTEX + TMP
      END



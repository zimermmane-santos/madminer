C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     -(P(-1,3)*Gamma(-1,2,-3)*Gamma(3,-3,-2)*ProjM(-2,1)) +
C      P(-1,3)*Gamma(-1,-3,-2)*Gamma(3,2,-3)*ProjM(-2,1)
C     
      SUBROUTINE FFV3_2(F1, V3, COUP, M2, W2,F2)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      COMPLEX*16 F1(*)
      COMPLEX*16 F2(6)
      REAL*8 M2
      REAL*8 P2(0:3)
      REAL*8 P3(0:3)
      COMPLEX*16 V3(*)
      REAL*8 W2
      COMPLEX*16 DENOM
      P3(0) = DBLE(V3(1))
      P3(1) = DBLE(V3(2))
      P3(2) = DIMAG(V3(2))
      P3(3) = DIMAG(V3(1))
      F2(1) = +F1(1)+V3(1)
      F2(2) = +F1(2)+V3(2)
      P2(0) = -DBLE(F2(1))
      P2(1) = -DBLE(F2(2))
      P2(2) = -DIMAG(F2(2))
      P2(3) = -DIMAG(F2(1))
      DENOM = COUP/(P2(0)**2-P2(1)**2-P2(2)**2-P2(3)**2 - M2 * (M2 -CI
     $ * W2))
      F2(3)= DENOM*(-2D0 )* CI * M2*(F1(4)*(P3(0)*(V3(4)-CI*(V3(5)))
     $ +(P3(1)*(-V3(3)+V3(6))+(P3(2)*(+CI*(V3(3))-CI*(V3(6)))+P3(3)*(
     $ -V3(4)+CI*(V3(5))))))+F1(3)*(V3(6)*P3(0)-CI*(V3(5)*P3(1))+CI
     $ *(V3(4)*P3(2))-V3(3)*P3(3)))
      F2(4)= DENOM*(-2D0 )* CI * M2*(F1(3)*(P3(0)*(V3(4)+CI*(V3(5)))
     $ +(P3(1)*(-1D0)*(V3(3)+V3(6))+(P3(2)*(-1D0)*(+CI*(V3(3)+V3(6)))
     $ +P3(3)*(V3(4)+CI*(V3(5))))))+F1(4)*(-V3(6)*P3(0)+CI*(V3(5)*P3(1)
     $ )-CI*(V3(4)*P3(2))+V3(3)*P3(3)))
      F2(5)= DENOM*(-2D0 * CI)*(F1(3)*(P2(1)*(P3(0)*(V3(4)+CI*(V3(5)))
     $ +(P3(1)*(-1D0)*(V3(3)+V3(6))+(P3(2)*(-1D0)*(+CI*(V3(3)+V3(6)))
     $ +P3(3)*(V3(4)+CI*(V3(5))))))+(P2(2)*(P3(0)*(-CI*(V3(4))+V3(5))
     $ +(P3(1)*(+CI*(V3(3)+V3(6)))+(P3(2)*(-1D0)*(V3(3)+V3(6))+P3(3)*(
     $ -CI*(V3(4))+V3(5)))))+(P2(0)*(-V3(3)*P3(3)+CI*(V3(4)*P3(2))-CI
     $ *(V3(5)*P3(1))+V3(6)*P3(0))+P2(3)*(-V3(3)*P3(3)+CI*(V3(4)*P3(2))
     $ -CI*(V3(5)*P3(1))+V3(6)*P3(0)))))+F1(4)*(P2(0)*(P3(0)*(V3(4)-CI
     $ *(V3(5)))+(P3(1)*(-V3(3)+V3(6))+(P3(2)*(+CI*(V3(3))-CI*(V3(6)))
     $ +P3(3)*(-V3(4)+CI*(V3(5))))))+(P2(3)*(P3(0)*(V3(4)-CI*(V3(5)))
     $ +(P3(1)*(-V3(3)+V3(6))+(P3(2)*(+CI*(V3(3))-CI*(V3(6)))+P3(3)*(
     $ -V3(4)+CI*(V3(5))))))+(P2(1)*(V3(3)*P3(3)-CI*(V3(4)*P3(2))+CI
     $ *(V3(5)*P3(1))-V3(6)*P3(0))+P2(2)*(-CI*(V3(3)*P3(3))-V3(4)*P3(2)
     $ +V3(5)*P3(1)+CI*(V3(6)*P3(0)))))))
      F2(6)= DENOM*(-2D0 * CI)*(F1(3)*(P2(0)*(P3(0)*(V3(4)+CI*(V3(5)))
     $ +(P3(1)*(-1D0)*(V3(3)+V3(6))+(P3(2)*(-1D0)*(+CI*(V3(3)+V3(6)))
     $ +P3(3)*(V3(4)+CI*(V3(5))))))+(P2(3)*(P3(0)*(-1D0)*(V3(4)+CI
     $ *(V3(5)))+(P3(1)*(V3(3)+V3(6))+(P3(2)*(+CI*(V3(3)+V3(6)))-P3(3)
     $ *(V3(4)+CI*(V3(5))))))+(P2(1)*(-V3(3)*P3(3)+CI*(V3(4)*P3(2))-CI
     $ *(V3(5)*P3(1))+V3(6)*P3(0))+P2(2)*(-CI*(V3(3)*P3(3))-V3(4)*P3(2)
     $ +V3(5)*P3(1)+CI*(V3(6)*P3(0))))))+F1(4)*(P2(1)*(P3(0)*(V3(4)-CI
     $ *(V3(5)))+(P3(1)*(-V3(3)+V3(6))+(P3(2)*(+CI*(V3(3))-CI*(V3(6)))
     $ +P3(3)*(-V3(4)+CI*(V3(5))))))+(P2(2)*(P3(0)*(+CI*(V3(4))+V3(5))
     $ +(P3(1)*(-CI*(V3(3))+CI*(V3(6)))+(P3(2)*(-V3(3)+V3(6))-P3(3)*(
     $ +CI*(V3(4))+V3(5)))))+(P2(0)*(V3(3)*P3(3)-CI*(V3(4)*P3(2))+CI
     $ *(V3(5)*P3(1))-V3(6)*P3(0))+P2(3)*(-V3(3)*P3(3)+CI*(V3(4)*P3(2))
     $ -CI*(V3(5)*P3(1))+V3(6)*P3(0))))))
      END



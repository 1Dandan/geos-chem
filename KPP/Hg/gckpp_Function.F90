! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! The ODE Function of Chemical Model File
! 
! Generated by KPP-3.2.0 symbolic chemistry Kinetics PreProcessor
!       (https:/github.com/KineticPreProcessor/KPP
! KPP is distributed under GPL, the general public licence
!       (http://www.gnu.org/copyleft/gpl.html)
! (C) 1995-1997, V. Damian & A. Sandu, CGRER, Univ. Iowa
! (C) 1997-2022, A. Sandu, Michigan Tech, Virginia Tech
!     With important contributions from:
!        M. Damian,   Villanova University, Philadelphia, PA, USA
!        R. Sander,   Max-Planck Institute for Chemistry, Mainz, Germany
!        M. Long,     Renaissance Fiber, LLC, North Carolina, USA
!        H. Lin,      Harvard University, Cambridge, MA, USA
!        R. Yantosca, Harvard University, Cambridge, MA, USA
! 
! File                 : gckpp_Function.F90
! Equation file        : gckpp.kpp
! Output root filename : gckpp
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



MODULE gckpp_Function

  USE gckpp_Parameters
  IMPLICIT NONE

! A - Rate for each equation
  REAL(kind=dp) :: A(NREACT)
  !$OMP THREADPRIVATE(  A )

CONTAINS


! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! Fun - time derivatives of variables - Aggregate form
!   Arguments :
!      V         - Concentrations of variable species (local)
!      F         - Concentrations of fixed species (local)
!      RCT       - Rate constants (local)
!      Vdot      - Time derivative of variable species concentrations
!      Aout      - Optional argument to return equation rate constants
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SUBROUTINE Fun ( V, F, RCT, Vdot, Aout )

! V - Concentrations of variable species (local)
  REAL(kind=dp) :: V(NVAR)
! F - Concentrations of fixed species (local)
  REAL(kind=dp) :: F(NFIX)
! RCT - Rate constants (local)
  REAL(kind=dp) :: RCT(NREACT)
! Vdot - Time derivative of variable species concentrations
  REAL(kind=dp) :: Vdot(NVAR)
! Aout - Optional argument to return equation rate constants
  REAL(kind=dp), OPTIONAL :: Aout(NREACT)


! Computation of equation rates
  A(1) = RCT(1)*V(30)*F(1)
  A(2) = RCT(2)*V(32)
  A(3) = RCT(3)*V(32)*F(1)
  A(4) = RCT(4)*V(32)*F(4)
  A(5) = RCT(5)*V(32)*F(4)
  A(6) = RCT(6)*V(32)*F(7)
  A(7) = RCT(7)*V(32)*F(9)
  A(8) = RCT(8)*V(32)*F(8)
  A(9) = RCT(9)*V(32)*F(3)
  A(10) = RCT(10)*V(32)*F(1)
  A(11) = RCT(11)*V(22)*F(11)
  A(12) = RCT(12)*V(22)*F(10)
  A(13) = RCT(13)*V(32)*F(6)
  A(14) = RCT(14)*V(30)*F(2)
  A(15) = RCT(15)*V(27)*F(2)
  A(16) = RCT(16)*V(27)*F(4)
  A(17) = RCT(17)*V(27)*F(4)
  A(18) = RCT(18)*V(27)*F(7)
  A(19) = RCT(19)*V(27)*F(9)
  A(20) = RCT(20)*V(27)*F(8)
  A(21) = RCT(21)*V(27)*F(1)
  A(22) = RCT(22)*V(27)*F(3)
  A(23) = RCT(23)*V(27)*F(6)
  A(24) = RCT(24)*V(24)*F(11)
  A(25) = RCT(25)*V(24)*F(10)
  A(26) = RCT(26)*V(30)*F(3)
  A(27) = RCT(27)*V(29)
  A(28) = RCT(28)*V(29)*F(4)
  A(29) = RCT(29)*V(29)*F(7)
  A(30) = RCT(30)*V(29)*F(9)
  A(31) = RCT(31)*V(29)*F(8)
  A(32) = RCT(32)*V(29)*F(1)
  A(33) = RCT(33)*V(29)*F(3)
  A(34) = RCT(34)*V(29)*F(6)
  A(35) = RCT(35)*V(19)*F(11)
  A(36) = RCT(36)*V(19)*F(10)
  A(37) = RCT(37)*V(16)
  A(38) = RCT(38)*V(23)
  A(39) = RCT(39)*V(31)
  A(40) = RCT(40)*V(14)
  A(41) = RCT(41)*V(13)
  A(42) = RCT(42)*V(18)
  A(43) = RCT(43)*V(17)
  A(44) = RCT(44)*V(25)
  A(45) = RCT(45)*V(26)
  A(46) = RCT(46)*V(9)
  A(47) = RCT(47)*V(8)
  A(48) = RCT(48)*V(10)
  A(49) = RCT(49)*V(1)
  A(50) = RCT(50)*V(15)
  A(51) = RCT(51)*V(21)
  A(52) = RCT(52)*V(20)
  A(53) = RCT(53)*V(12)
  A(54) = RCT(54)*V(11)
  A(55) = RCT(55)*V(16)
  A(56) = RCT(56)*V(23)
  A(57) = RCT(57)*V(31)
  A(58) = RCT(58)*V(14)
  A(59) = RCT(59)*V(13)
  A(60) = RCT(60)*V(18)
  A(61) = RCT(61)*V(17)
  A(62) = RCT(62)*V(25)
  A(63) = RCT(63)*V(26)
  A(64) = RCT(64)*V(9)
  A(65) = RCT(65)*V(8)
  A(66) = RCT(66)*V(10)
  A(67) = RCT(67)*V(15)
  A(68) = RCT(68)*V(21)
  A(69) = RCT(69)*V(20)
  A(70) = RCT(70)*V(12)
  A(71) = RCT(71)*V(11)
  A(75) = RCT(75)*V(32)
  A(76) = RCT(76)*V(16)
  A(77) = RCT(77)*V(23)
  A(78) = RCT(78)*V(31)
  A(79) = RCT(79)*V(18)
  A(80) = RCT(80)*V(14)
  A(81) = RCT(81)*V(13)
  A(82) = RCT(82)*V(17)
  A(83) = RCT(83)*V(25)
  A(84) = RCT(84)*V(26)
  A(85) = RCT(85)*V(10)
  A(86) = RCT(86)*V(9)
  A(87) = RCT(87)*V(8)
  A(88) = RCT(88)*V(29)
  A(89) = RCT(89)*V(15)
  A(90) = RCT(90)*V(21)
  A(91) = RCT(91)*V(20)
  A(92) = RCT(92)*V(12)
  A(93) = RCT(93)*V(11)
  A(94) = RCT(94)*V(28)

  !### Use Aout to return equation rates
  IF ( PRESENT( Aout ) ) Aout = A

! Aggregate function
  Vdot(1) = -A(49)
  Vdot(2) = A(55)+A(56)+A(57)+A(58)+A(59)+A(60)+A(61)+A(62)+A(63)+A(64)+A(65)+A(66)+A(67)+A(68)+A(69)+A(70)+A(71)
  Vdot(3) = A(1)+A(14)+A(26)
  Vdot(4) = A(2)+A(3)+A(4)+A(15)+A(16)+A(27)+A(75)+0.67*A(77)+0.49*A(78)+0.4*A(79)+A(80)+A(81)+0.67*A(83)+0.49*A(84)&
              &+A(88)+0.67*A(90)+A(91)+A(94)
  Vdot(5) = A(1)+A(32)
  Vdot(6) = A(26)+0.35*A(78)+0.35*A(84)
  Vdot(7) = A(14)
  Vdot(8) = A(19)-A(47)-A(65)-A(87)
  Vdot(9) = A(20)-A(46)-A(64)-A(86)
  Vdot(10) = A(21)-A(48)-A(66)-A(85)
  Vdot(11) = A(30)-A(54)-A(71)-A(93)
  Vdot(12) = A(31)-A(53)-A(70)-A(92)
  Vdot(13) = A(7)-A(41)-A(59)-A(81)
  Vdot(14) = A(8)-A(40)-A(58)-A(80)
  Vdot(15) = A(28)-A(50)-A(67)-A(89)
  Vdot(16) = A(5)-A(37)-A(55)-A(76)
  Vdot(17) = A(17)-A(43)-A(61)-A(82)
  Vdot(18) = A(10)-A(42)-A(60)-A(79)
  Vdot(19) = A(34)-A(35)-A(36)+0.9*A(89)+0.25*A(90)
  Vdot(20) = A(33)+A(35)-A(52)-A(69)+0.01*A(90)-A(91)
  Vdot(21) = A(29)-A(51)-A(68)-A(90)
  Vdot(22) = -A(11)-A(12)+A(13)+0.9*A(76)+0.25*A(77)
  Vdot(23) = A(6)-A(38)-A(56)-A(77)
  Vdot(24) = A(23)-A(24)-A(25)+0.9*A(82)+0.25*A(83)
  Vdot(25) = A(18)-A(44)-A(62)-A(83)
  Vdot(26) = A(22)+A(24)-A(45)-A(63)+0.01*A(83)-0.99*A(84)
  Vdot(27) = A(14)-A(15)-A(16)-A(17)-A(18)-A(19)-A(20)-A(21)-A(22)-A(23)+A(25)+0.1*A(82)+0.07*A(83)+0.15*A(84)+A(85)&
               &+A(86)+A(87)
  Vdot(28) = A(37)+A(38)+A(39)+A(40)+A(41)+A(42)+A(43)+A(44)+A(45)+A(46)+A(47)+A(48)+A(49)+A(50)+A(51)+A(52)+A(53)+A(54)&
               &-A(94)
  Vdot(29) = A(26)-A(27)-A(28)-A(29)-A(30)-A(31)-A(32)-A(33)-A(34)+A(36)+0.35*A(78)+0.35*A(84)-A(88)+0.1*A(89)+0.07&
               &*A(90)+A(92)+A(93)
  Vdot(30) = -A(1)+A(2)+A(3)+A(4)-A(14)+A(15)+A(16)-A(26)+A(27)+A(75)+0.67*A(77)+0.49*A(78)+0.4*A(79)+A(80)+A(81)+0.67&
               &*A(83)+0.49*A(84)+A(88)+0.67*A(90)+A(91)+A(94)
  Vdot(31) = A(9)+A(11)+A(32)-A(39)-A(57)+0.01*A(77)-0.99*A(78)
  Vdot(32) = A(1)-A(2)-A(3)-A(4)-A(5)-A(6)-A(7)-A(8)-A(9)-A(10)+A(12)-A(13)-A(75)+0.1*A(76)+0.07*A(77)+0.15*A(78)+0.6&
               &*A(79)
      
END SUBROUTINE Fun

! End of Fun function
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! Fun_SPLIT - time derivatives of variables - Split form
!   Arguments :
!      V         - Concentrations of variable species (local)
!      F         - Concentrations of fixed species (local)
!      RCT       - Rate constants (local)
!      Vdot      - Time derivative of variable species concentrations
!      P_VAR     - Production term
!      D_VAR     - Destruction term
!      Aout      - Optional argument to return equation rate constants
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SUBROUTINE Fun_SPLIT ( V, F, RCT, Vdot, P_VAR, D_VAR, Aout )

! V - Concentrations of variable species (local)
  REAL(kind=dp) :: V(NVAR)
! F - Concentrations of fixed species (local)
  REAL(kind=dp) :: F(NFIX)
! RCT - Rate constants (local)
  REAL(kind=dp) :: RCT(NREACT)
! Vdot - Time derivative of variable species concentrations
  REAL(kind=dp) :: Vdot(NVAR)
! P_VAR - Production term
  REAL(kind=dp) :: P_VAR(NVAR)
! D_VAR - Destruction term
  REAL(kind=dp) :: D_VAR(NVAR)
! Aout - Optional argument to return equation rate constants
  REAL(kind=dp), OPTIONAL :: Aout(NREACT)


! Computation of equation rates
  A(1) = RCT(1)*V(30)*F(1)
  A(2) = RCT(2)*V(32)
  A(3) = RCT(3)*V(32)*F(1)
  A(4) = RCT(4)*V(32)*F(4)
  A(5) = RCT(5)*V(32)*F(4)
  A(6) = RCT(6)*V(32)*F(7)
  A(7) = RCT(7)*V(32)*F(9)
  A(8) = RCT(8)*V(32)*F(8)
  A(9) = RCT(9)*V(32)*F(3)
  A(10) = RCT(10)*V(32)*F(1)
  A(11) = RCT(11)*V(22)*F(11)
  A(12) = RCT(12)*V(22)*F(10)
  A(13) = RCT(13)*V(32)*F(6)
  A(14) = RCT(14)*V(30)*F(2)
  A(15) = RCT(15)*V(27)*F(2)
  A(16) = RCT(16)*V(27)*F(4)
  A(17) = RCT(17)*V(27)*F(4)
  A(18) = RCT(18)*V(27)*F(7)
  A(19) = RCT(19)*V(27)*F(9)
  A(20) = RCT(20)*V(27)*F(8)
  A(21) = RCT(21)*V(27)*F(1)
  A(22) = RCT(22)*V(27)*F(3)
  A(23) = RCT(23)*V(27)*F(6)
  A(24) = RCT(24)*V(24)*F(11)
  A(25) = RCT(25)*V(24)*F(10)
  A(26) = RCT(26)*V(30)*F(3)
  A(27) = RCT(27)*V(29)
  A(28) = RCT(28)*V(29)*F(4)
  A(29) = RCT(29)*V(29)*F(7)
  A(30) = RCT(30)*V(29)*F(9)
  A(31) = RCT(31)*V(29)*F(8)
  A(32) = RCT(32)*V(29)*F(1)
  A(33) = RCT(33)*V(29)*F(3)
  A(34) = RCT(34)*V(29)*F(6)
  A(35) = RCT(35)*V(19)*F(11)
  A(36) = RCT(36)*V(19)*F(10)
  A(37) = RCT(37)*V(16)
  A(38) = RCT(38)*V(23)
  A(39) = RCT(39)*V(31)
  A(40) = RCT(40)*V(14)
  A(41) = RCT(41)*V(13)
  A(42) = RCT(42)*V(18)
  A(43) = RCT(43)*V(17)
  A(44) = RCT(44)*V(25)
  A(45) = RCT(45)*V(26)
  A(46) = RCT(46)*V(9)
  A(47) = RCT(47)*V(8)
  A(48) = RCT(48)*V(10)
  A(49) = RCT(49)*V(1)
  A(50) = RCT(50)*V(15)
  A(51) = RCT(51)*V(21)
  A(52) = RCT(52)*V(20)
  A(53) = RCT(53)*V(12)
  A(54) = RCT(54)*V(11)
  A(55) = RCT(55)*V(16)
  A(56) = RCT(56)*V(23)
  A(57) = RCT(57)*V(31)
  A(58) = RCT(58)*V(14)
  A(59) = RCT(59)*V(13)
  A(60) = RCT(60)*V(18)
  A(61) = RCT(61)*V(17)
  A(62) = RCT(62)*V(25)
  A(63) = RCT(63)*V(26)
  A(64) = RCT(64)*V(9)
  A(65) = RCT(65)*V(8)
  A(66) = RCT(66)*V(10)
  A(67) = RCT(67)*V(15)
  A(68) = RCT(68)*V(21)
  A(69) = RCT(69)*V(20)
  A(70) = RCT(70)*V(12)
  A(71) = RCT(71)*V(11)
  A(75) = RCT(75)*V(32)
  A(76) = RCT(76)*V(16)
  A(77) = RCT(77)*V(23)
  A(78) = RCT(78)*V(31)
  A(79) = RCT(79)*V(18)
  A(80) = RCT(80)*V(14)
  A(81) = RCT(81)*V(13)
  A(82) = RCT(82)*V(17)
  A(83) = RCT(83)*V(25)
  A(84) = RCT(84)*V(26)
  A(85) = RCT(85)*V(10)
  A(86) = RCT(86)*V(9)
  A(87) = RCT(87)*V(8)
  A(88) = RCT(88)*V(29)
  A(89) = RCT(89)*V(15)
  A(90) = RCT(90)*V(21)
  A(91) = RCT(91)*V(20)
  A(92) = RCT(92)*V(12)
  A(93) = RCT(93)*V(11)
  A(94) = RCT(94)*V(28)

  !### Use Aout to return equation rates
  IF ( PRESENT( Aout ) ) Aout = A

! Production function
  P_VAR(1) = 0
  P_VAR(2) = A(55)+A(56)+A(57)+A(58)+A(59)+A(60)+A(61)+A(62)+A(63)+A(64)+A(65)+A(66)+A(67)+A(68)+A(69)+A(70)+A(71)
  P_VAR(3) = A(1)+A(14)+A(26)
  P_VAR(4) = A(2)+A(3)+A(4)+A(15)+A(16)+A(27)+A(75)+0.67*A(77)+0.49*A(78)+0.4*A(79)+A(80)+A(81)+0.67*A(83)+0.49*A(84)&
               &+A(88)+0.67*A(90)+A(91)+A(94)
  P_VAR(5) = A(1)+A(32)
  P_VAR(6) = A(26)+0.35*A(78)+0.35*A(84)
  P_VAR(7) = A(14)
  P_VAR(8) = A(19)
  P_VAR(9) = A(20)
  P_VAR(10) = A(21)
  P_VAR(11) = A(30)
  P_VAR(12) = A(31)
  P_VAR(13) = A(7)
  P_VAR(14) = A(8)
  P_VAR(15) = A(28)
  P_VAR(16) = A(5)
  P_VAR(17) = A(17)
  P_VAR(18) = A(10)
  P_VAR(19) = A(34)+0.9*A(89)+0.25*A(90)
  P_VAR(20) = A(33)+A(35)+0.01*A(90)
  P_VAR(21) = A(29)
  P_VAR(22) = A(13)+0.9*A(76)+0.25*A(77)
  P_VAR(23) = A(6)
  P_VAR(24) = A(23)+0.9*A(82)+0.25*A(83)
  P_VAR(25) = A(18)
  P_VAR(26) = A(22)+A(24)+0.01*A(83)+0.01*A(84)
  P_VAR(27) = A(14)+A(25)+0.1*A(82)+0.07*A(83)+0.15*A(84)+A(85)+A(86)+A(87)
  P_VAR(28) = A(37)+A(38)+A(39)+A(40)+A(41)+A(42)+A(43)+A(44)+A(45)+A(46)+A(47)+A(48)+A(49)+A(50)+A(51)+A(52)+A(53)&
                &+A(54)
  P_VAR(29) = A(26)+A(36)+0.35*A(78)+0.35*A(84)+0.1*A(89)+0.07*A(90)+A(92)+A(93)
  P_VAR(30) = A(2)+A(3)+A(4)+A(15)+A(16)+A(27)+A(75)+0.67*A(77)+0.49*A(78)+0.4*A(79)+A(80)+A(81)+0.67*A(83)+0.49*A(84)&
                &+A(88)+0.67*A(90)+A(91)+A(94)
  P_VAR(31) = A(9)+A(11)+A(32)+0.01*A(77)+0.01*A(78)
  P_VAR(32) = A(1)+A(12)+0.1*A(76)+0.07*A(77)+0.15*A(78)+0.6*A(79)

! Destruction function
  D_VAR(1) = RCT(49)
  D_VAR(2) = 0
  D_VAR(3) = 0
  D_VAR(4) = 0
  D_VAR(5) = 0
  D_VAR(6) = 0
  D_VAR(7) = 0
  D_VAR(8) = RCT(47)+RCT(65)+RCT(87)
  D_VAR(9) = RCT(46)+RCT(64)+RCT(86)
  D_VAR(10) = RCT(48)+RCT(66)+RCT(85)
  D_VAR(11) = RCT(54)+RCT(71)+RCT(93)
  D_VAR(12) = RCT(53)+RCT(70)+RCT(92)
  D_VAR(13) = RCT(41)+RCT(59)+RCT(81)
  D_VAR(14) = RCT(40)+RCT(58)+RCT(80)
  D_VAR(15) = RCT(50)+RCT(67)+RCT(89)
  D_VAR(16) = RCT(37)+RCT(55)+RCT(76)
  D_VAR(17) = RCT(43)+RCT(61)+RCT(82)
  D_VAR(18) = RCT(42)+RCT(60)+RCT(79)
  D_VAR(19) = RCT(35)*F(11)+RCT(36)*F(10)
  D_VAR(20) = RCT(52)+RCT(69)+RCT(91)
  D_VAR(21) = RCT(51)+RCT(68)+RCT(90)
  D_VAR(22) = RCT(11)*F(11)+RCT(12)*F(10)
  D_VAR(23) = RCT(38)+RCT(56)+RCT(77)
  D_VAR(24) = RCT(24)*F(11)+RCT(25)*F(10)
  D_VAR(25) = RCT(44)+RCT(62)+RCT(83)
  D_VAR(26) = RCT(45)+RCT(63)+RCT(84)
  D_VAR(27) = RCT(15)*F(2)+RCT(16)*F(4)+RCT(17)*F(4)+RCT(18)*F(7)+RCT(19)*F(9)+RCT(20)*F(8)+RCT(21)*F(1)+RCT(22)*F(3)&
                &+RCT(23)*F(6)
  D_VAR(28) = RCT(94)
  D_VAR(29) = RCT(27)+RCT(28)*F(4)+RCT(29)*F(7)+RCT(30)*F(9)+RCT(31)*F(8)+RCT(32)*F(1)+RCT(33)*F(3)+RCT(34)*F(6)+RCT(88)
  D_VAR(30) = RCT(1)*F(1)+RCT(14)*F(2)+RCT(26)*F(3)
  D_VAR(31) = RCT(39)+RCT(57)+RCT(78)
  D_VAR(32) = RCT(2)+RCT(3)*F(1)+RCT(4)*F(4)+RCT(5)*F(4)+RCT(6)*F(7)+RCT(7)*F(9)+RCT(8)*F(8)+RCT(9)*F(3)+RCT(10)*F(1)&
                &+RCT(13)*F(6)+RCT(75)

  Vdot = P_VAR - D_VAR*V
      
END SUBROUTINE Fun_SPLIT

! End of Fun_SPLIT function
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! CalcStoichNum - calculate stoichiometric numbers
!   Arguments :
!      StoichNum - Stoichiometric numbers
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SUBROUTINE CalcStoichNum ( StoichNum )

! StoichNum - Stoichiometric numbers
  REAL(kind=dp) :: StoichNum(NVAR,NREACT)

  StoichNum(:,:) = 0.
  StoichNum(1,49) = -1
  StoichNum(2,55) = 1
  StoichNum(2,56) = 1
  StoichNum(2,57) = 1
  StoichNum(2,58) = 1
  StoichNum(2,59) = 1
  StoichNum(2,60) = 1
  StoichNum(2,61) = 1
  StoichNum(2,62) = 1
  StoichNum(2,63) = 1
  StoichNum(2,64) = 1
  StoichNum(2,65) = 1
  StoichNum(2,66) = 1
  StoichNum(2,67) = 1
  StoichNum(2,68) = 1
  StoichNum(2,69) = 1
  StoichNum(2,70) = 1
  StoichNum(2,71) = 1
  StoichNum(3,1) = 1
  StoichNum(3,14) = 1
  StoichNum(3,26) = 1
  StoichNum(4,2) = 1
  StoichNum(4,3) = 1
  StoichNum(4,4) = 1
  StoichNum(4,15) = 1
  StoichNum(4,16) = 1
  StoichNum(4,27) = 1
  StoichNum(4,75) = 1
  StoichNum(4,77) = 0.67
  StoichNum(4,78) = 0.49
  StoichNum(4,79) = 0.4
  StoichNum(4,80) = 1
  StoichNum(4,81) = 1
  StoichNum(4,83) = 0.67
  StoichNum(4,84) = 0.49
  StoichNum(4,88) = 1
  StoichNum(4,90) = 0.67
  StoichNum(4,91) = 1
  StoichNum(4,94) = 1
  StoichNum(5,1) = 1
  StoichNum(5,32) = 1
  StoichNum(6,26) = 1
  StoichNum(6,78) = 0.35
  StoichNum(6,84) = 0.35
  StoichNum(7,14) = 1
  StoichNum(8,19) = 1
  StoichNum(8,47) = -1
  StoichNum(8,65) = -1
  StoichNum(8,87) = -1
  StoichNum(9,20) = 1
  StoichNum(9,46) = -1
  StoichNum(9,64) = -1
  StoichNum(9,86) = -1
  StoichNum(10,21) = 1
  StoichNum(10,48) = -1
  StoichNum(10,66) = -1
  StoichNum(10,85) = -1
  StoichNum(11,30) = 1
  StoichNum(11,54) = -1
  StoichNum(11,71) = -1
  StoichNum(11,93) = -1
  StoichNum(12,31) = 1
  StoichNum(12,53) = -1
  StoichNum(12,70) = -1
  StoichNum(12,92) = -1
  StoichNum(13,7) = 1
  StoichNum(13,41) = -1
  StoichNum(13,59) = -1
  StoichNum(13,81) = -1
  StoichNum(14,8) = 1
  StoichNum(14,40) = -1
  StoichNum(14,58) = -1
  StoichNum(14,80) = -1
  StoichNum(15,28) = 1
  StoichNum(15,50) = -1
  StoichNum(15,67) = -1
  StoichNum(15,89) = -1
  StoichNum(16,5) = 1
  StoichNum(16,37) = -1
  StoichNum(16,55) = -1
  StoichNum(16,76) = -1
  StoichNum(17,17) = 1
  StoichNum(17,43) = -1
  StoichNum(17,61) = -1
  StoichNum(17,82) = -1
  StoichNum(18,10) = 1
  StoichNum(18,42) = -1
  StoichNum(18,60) = -1
  StoichNum(18,79) = -1
  StoichNum(19,34) = 1
  StoichNum(19,35) = -1
  StoichNum(19,36) = -1
  StoichNum(19,89) = 0.9
  StoichNum(19,90) = 0.25
  StoichNum(20,33) = 1
  StoichNum(20,35) = 1
  StoichNum(20,52) = -1
  StoichNum(20,69) = -1
  StoichNum(20,90) = 0.01
  StoichNum(20,91) = -1
  StoichNum(21,29) = 1
  StoichNum(21,51) = -1
  StoichNum(21,68) = -1
  StoichNum(21,90) = -1
  StoichNum(22,11) = -1
  StoichNum(22,12) = -1
  StoichNum(22,13) = 1
  StoichNum(22,76) = 0.9
  StoichNum(22,77) = 0.25
  StoichNum(23,6) = 1
  StoichNum(23,38) = -1
  StoichNum(23,56) = -1
  StoichNum(23,77) = -1
  StoichNum(24,23) = 1
  StoichNum(24,24) = -1
  StoichNum(24,25) = -1
  StoichNum(24,82) = 0.9
  StoichNum(24,83) = 0.25
  StoichNum(25,18) = 1
  StoichNum(25,44) = -1
  StoichNum(25,62) = -1
  StoichNum(25,83) = -1
  StoichNum(26,22) = 1
  StoichNum(26,24) = 1
  StoichNum(26,45) = -1
  StoichNum(26,63) = -1
  StoichNum(26,83) = 0.01
  StoichNum(26,84) = -0.99
  StoichNum(27,14) = 1
  StoichNum(27,15) = -1
  StoichNum(27,16) = -1
  StoichNum(27,17) = -1
  StoichNum(27,18) = -1
  StoichNum(27,19) = -1
  StoichNum(27,20) = -1
  StoichNum(27,21) = -1
  StoichNum(27,22) = -1
  StoichNum(27,23) = -1
  StoichNum(27,25) = 1
  StoichNum(27,82) = 0.1
  StoichNum(27,83) = 0.07
  StoichNum(27,84) = 0.15
  StoichNum(27,85) = 1
  StoichNum(27,86) = 1
  StoichNum(27,87) = 1
  StoichNum(28,37) = 1
  StoichNum(28,38) = 1
  StoichNum(28,39) = 1
  StoichNum(28,40) = 1
  StoichNum(28,41) = 1
  StoichNum(28,42) = 1
  StoichNum(28,43) = 1
  StoichNum(28,44) = 1
  StoichNum(28,45) = 1
  StoichNum(28,46) = 1
  StoichNum(28,47) = 1
  StoichNum(28,48) = 1
  StoichNum(28,49) = 1
  StoichNum(28,50) = 1
  StoichNum(28,51) = 1
  StoichNum(28,52) = 1
  StoichNum(28,53) = 1
  StoichNum(28,54) = 1
  StoichNum(28,94) = -1
  StoichNum(29,26) = 1
  StoichNum(29,27) = -1
  StoichNum(29,28) = -1
  StoichNum(29,29) = -1
  StoichNum(29,30) = -1
  StoichNum(29,31) = -1
  StoichNum(29,32) = -1
  StoichNum(29,33) = -1
  StoichNum(29,34) = -1
  StoichNum(29,36) = 1
  StoichNum(29,78) = 0.35
  StoichNum(29,84) = 0.35
  StoichNum(29,88) = -1
  StoichNum(29,89) = 0.1
  StoichNum(29,90) = 0.07
  StoichNum(29,92) = 1
  StoichNum(29,93) = 1
  StoichNum(30,1) = -1
  StoichNum(30,2) = 1
  StoichNum(30,3) = 1
  StoichNum(30,4) = 1
  StoichNum(30,14) = -1
  StoichNum(30,15) = 1
  StoichNum(30,16) = 1
  StoichNum(30,26) = -1
  StoichNum(30,27) = 1
  StoichNum(30,75) = 1
  StoichNum(30,77) = 0.67
  StoichNum(30,78) = 0.49
  StoichNum(30,79) = 0.4
  StoichNum(30,80) = 1
  StoichNum(30,81) = 1
  StoichNum(30,83) = 0.67
  StoichNum(30,84) = 0.49
  StoichNum(30,88) = 1
  StoichNum(30,90) = 0.67
  StoichNum(30,91) = 1
  StoichNum(30,94) = 1
  StoichNum(31,9) = 1
  StoichNum(31,11) = 1
  StoichNum(31,32) = 1
  StoichNum(31,39) = -1
  StoichNum(31,57) = -1
  StoichNum(31,77) = 0.01
  StoichNum(31,78) = -0.99
  StoichNum(32,1) = 1
  StoichNum(32,2) = -1
  StoichNum(32,3) = -1
  StoichNum(32,4) = -1
  StoichNum(32,5) = -1
  StoichNum(32,6) = -1
  StoichNum(32,7) = -1
  StoichNum(32,8) = -1
  StoichNum(32,9) = -1
  StoichNum(32,10) = -1
  StoichNum(32,12) = 1
  StoichNum(32,13) = -1
  StoichNum(32,75) = -1
  StoichNum(32,76) = 0.1
  StoichNum(32,77) = 0.07
  StoichNum(32,78) = 0.15
  StoichNum(32,79) = 0.6
      
END SUBROUTINE CalcStoichNum

! End of CalcStoichNum function
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



END MODULE gckpp_Function


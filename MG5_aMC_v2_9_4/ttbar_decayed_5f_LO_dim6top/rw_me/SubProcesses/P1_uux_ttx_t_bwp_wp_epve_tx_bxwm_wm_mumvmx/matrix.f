      SUBROUTINE M6_SMATRIXHEL(P,HEL,ANS)
      IMPLICIT NONE
C     
C     CONSTANT
C     
      INTEGER    NEXTERNAL
      PARAMETER (NEXTERNAL=8)
      INTEGER                 NCOMB
      PARAMETER (             NCOMB=256)
CF2PY INTENT(OUT) :: ANS
CF2PY INTENT(IN) :: HEL
CF2PY INTENT(IN) :: P(0:3,NEXTERNAL)

C     
C     ARGUMENTS 
C     
      REAL*8 P(0:3,NEXTERNAL),ANS
      INTEGER HEL
C     
C     GLOBAL VARIABLES
C     
      INTEGER USERHEL
      COMMON/M6_HELUSERCHOICE/USERHEL
C     ----------
C     BEGIN CODE
C     ----------
      USERHEL=HEL
      CALL M6_SMATRIX(P,ANS)
      USERHEL=-1

      END

      SUBROUTINE M6_SMATRIX(P,ANS)
C     
C     Generated by MadGraph5_aMC@NLO v. 2.9.4, 2021-05-30
C     By the MadGraph5_aMC@NLO Development Team
C     Visit launchpad.net/madgraph5 and amcatnlo.web.cern.ch
C     
C     MadGraph5_aMC@NLO StandAlone Version
C     
C     Returns amplitude squared summed/avg over colors
C     and helicities
C     for the point in phase space P(0:3,NEXTERNAL)
C     
C     Process: u u~ > t t~ DIM6<=1 @1
C     *   Decay: t > b w+ DIM6=0
C     *     Decay: w+ > e+ ve DIM6=0
C     *   Decay: t~ > b~ w- DIM6=0
C     *     Decay: w- > mu- vm~ DIM6=0
C     
      IMPLICIT NONE
C     
C     CONSTANTS
C     
      INTEGER    NEXTERNAL
      PARAMETER (NEXTERNAL=8)
      INTEGER    NINITIAL
      PARAMETER (NINITIAL=2)
      INTEGER NPOLENTRIES
      PARAMETER (NPOLENTRIES=(NEXTERNAL+1)*6)
      INTEGER                 NCOMB
      PARAMETER (             NCOMB=256)
      INTEGER HELAVGFACTOR
      PARAMETER (HELAVGFACTOR=4)
C     
C     ARGUMENTS 
C     
      REAL*8 P(0:3,NEXTERNAL),ANS
CF2PY INTENT(OUT) :: ANS
CF2PY INTENT(IN) :: P(0:3,NEXTERNAL)
C     
C     LOCAL VARIABLES 
C     
      INTEGER NHEL(NEXTERNAL,NCOMB),NTRY
C     put in common block to expose this variable to python interface
      COMMON/M6_PROCESS_NHEL/NHEL
      REAL*8 T
      REAL*8 M6_MATRIX
      INTEGER IHEL,IDEN, I, J
C     For a 1>N process, them BEAMTWO_HELAVGFACTOR would be set to 1.
      INTEGER BEAMS_HELAVGFACTOR(2)
      DATA (BEAMS_HELAVGFACTOR(I),I=1,2)/2,2/
      INTEGER JC(NEXTERNAL)
      LOGICAL GOODHEL(NCOMB)
      DATA NTRY/0/
      DATA GOODHEL/NCOMB*.FALSE./

C     
C     GLOBAL VARIABLES
C     
      INTEGER USERHEL
      COMMON/M6_HELUSERCHOICE/USERHEL
      DATA USERHEL/-1/
      LOGICAL HELRESET
      COMMON/M6_HELRESET/HELRESET
      DATA HELRESET/.TRUE./

      DATA (NHEL(I,   1),I=1,8) / 1,-1,-1, 1,-1, 1,-1, 1/
      DATA (NHEL(I,   2),I=1,8) / 1,-1,-1, 1,-1, 1,-1,-1/
      DATA (NHEL(I,   3),I=1,8) / 1,-1,-1, 1,-1, 1, 1, 1/
      DATA (NHEL(I,   4),I=1,8) / 1,-1,-1, 1,-1, 1, 1,-1/
      DATA (NHEL(I,   5),I=1,8) / 1,-1,-1, 1,-1,-1,-1, 1/
      DATA (NHEL(I,   6),I=1,8) / 1,-1,-1, 1,-1,-1,-1,-1/
      DATA (NHEL(I,   7),I=1,8) / 1,-1,-1, 1,-1,-1, 1, 1/
      DATA (NHEL(I,   8),I=1,8) / 1,-1,-1, 1,-1,-1, 1,-1/
      DATA (NHEL(I,   9),I=1,8) / 1,-1,-1, 1, 1, 1,-1, 1/
      DATA (NHEL(I,  10),I=1,8) / 1,-1,-1, 1, 1, 1,-1,-1/
      DATA (NHEL(I,  11),I=1,8) / 1,-1,-1, 1, 1, 1, 1, 1/
      DATA (NHEL(I,  12),I=1,8) / 1,-1,-1, 1, 1, 1, 1,-1/
      DATA (NHEL(I,  13),I=1,8) / 1,-1,-1, 1, 1,-1,-1, 1/
      DATA (NHEL(I,  14),I=1,8) / 1,-1,-1, 1, 1,-1,-1,-1/
      DATA (NHEL(I,  15),I=1,8) / 1,-1,-1, 1, 1,-1, 1, 1/
      DATA (NHEL(I,  16),I=1,8) / 1,-1,-1, 1, 1,-1, 1,-1/
      DATA (NHEL(I,  17),I=1,8) / 1,-1,-1,-1,-1, 1,-1, 1/
      DATA (NHEL(I,  18),I=1,8) / 1,-1,-1,-1,-1, 1,-1,-1/
      DATA (NHEL(I,  19),I=1,8) / 1,-1,-1,-1,-1, 1, 1, 1/
      DATA (NHEL(I,  20),I=1,8) / 1,-1,-1,-1,-1, 1, 1,-1/
      DATA (NHEL(I,  21),I=1,8) / 1,-1,-1,-1,-1,-1,-1, 1/
      DATA (NHEL(I,  22),I=1,8) / 1,-1,-1,-1,-1,-1,-1,-1/
      DATA (NHEL(I,  23),I=1,8) / 1,-1,-1,-1,-1,-1, 1, 1/
      DATA (NHEL(I,  24),I=1,8) / 1,-1,-1,-1,-1,-1, 1,-1/
      DATA (NHEL(I,  25),I=1,8) / 1,-1,-1,-1, 1, 1,-1, 1/
      DATA (NHEL(I,  26),I=1,8) / 1,-1,-1,-1, 1, 1,-1,-1/
      DATA (NHEL(I,  27),I=1,8) / 1,-1,-1,-1, 1, 1, 1, 1/
      DATA (NHEL(I,  28),I=1,8) / 1,-1,-1,-1, 1, 1, 1,-1/
      DATA (NHEL(I,  29),I=1,8) / 1,-1,-1,-1, 1,-1,-1, 1/
      DATA (NHEL(I,  30),I=1,8) / 1,-1,-1,-1, 1,-1,-1,-1/
      DATA (NHEL(I,  31),I=1,8) / 1,-1,-1,-1, 1,-1, 1, 1/
      DATA (NHEL(I,  32),I=1,8) / 1,-1,-1,-1, 1,-1, 1,-1/
      DATA (NHEL(I,  33),I=1,8) / 1,-1, 1, 1,-1, 1,-1, 1/
      DATA (NHEL(I,  34),I=1,8) / 1,-1, 1, 1,-1, 1,-1,-1/
      DATA (NHEL(I,  35),I=1,8) / 1,-1, 1, 1,-1, 1, 1, 1/
      DATA (NHEL(I,  36),I=1,8) / 1,-1, 1, 1,-1, 1, 1,-1/
      DATA (NHEL(I,  37),I=1,8) / 1,-1, 1, 1,-1,-1,-1, 1/
      DATA (NHEL(I,  38),I=1,8) / 1,-1, 1, 1,-1,-1,-1,-1/
      DATA (NHEL(I,  39),I=1,8) / 1,-1, 1, 1,-1,-1, 1, 1/
      DATA (NHEL(I,  40),I=1,8) / 1,-1, 1, 1,-1,-1, 1,-1/
      DATA (NHEL(I,  41),I=1,8) / 1,-1, 1, 1, 1, 1,-1, 1/
      DATA (NHEL(I,  42),I=1,8) / 1,-1, 1, 1, 1, 1,-1,-1/
      DATA (NHEL(I,  43),I=1,8) / 1,-1, 1, 1, 1, 1, 1, 1/
      DATA (NHEL(I,  44),I=1,8) / 1,-1, 1, 1, 1, 1, 1,-1/
      DATA (NHEL(I,  45),I=1,8) / 1,-1, 1, 1, 1,-1,-1, 1/
      DATA (NHEL(I,  46),I=1,8) / 1,-1, 1, 1, 1,-1,-1,-1/
      DATA (NHEL(I,  47),I=1,8) / 1,-1, 1, 1, 1,-1, 1, 1/
      DATA (NHEL(I,  48),I=1,8) / 1,-1, 1, 1, 1,-1, 1,-1/
      DATA (NHEL(I,  49),I=1,8) / 1,-1, 1,-1,-1, 1,-1, 1/
      DATA (NHEL(I,  50),I=1,8) / 1,-1, 1,-1,-1, 1,-1,-1/
      DATA (NHEL(I,  51),I=1,8) / 1,-1, 1,-1,-1, 1, 1, 1/
      DATA (NHEL(I,  52),I=1,8) / 1,-1, 1,-1,-1, 1, 1,-1/
      DATA (NHEL(I,  53),I=1,8) / 1,-1, 1,-1,-1,-1,-1, 1/
      DATA (NHEL(I,  54),I=1,8) / 1,-1, 1,-1,-1,-1,-1,-1/
      DATA (NHEL(I,  55),I=1,8) / 1,-1, 1,-1,-1,-1, 1, 1/
      DATA (NHEL(I,  56),I=1,8) / 1,-1, 1,-1,-1,-1, 1,-1/
      DATA (NHEL(I,  57),I=1,8) / 1,-1, 1,-1, 1, 1,-1, 1/
      DATA (NHEL(I,  58),I=1,8) / 1,-1, 1,-1, 1, 1,-1,-1/
      DATA (NHEL(I,  59),I=1,8) / 1,-1, 1,-1, 1, 1, 1, 1/
      DATA (NHEL(I,  60),I=1,8) / 1,-1, 1,-1, 1, 1, 1,-1/
      DATA (NHEL(I,  61),I=1,8) / 1,-1, 1,-1, 1,-1,-1, 1/
      DATA (NHEL(I,  62),I=1,8) / 1,-1, 1,-1, 1,-1,-1,-1/
      DATA (NHEL(I,  63),I=1,8) / 1,-1, 1,-1, 1,-1, 1, 1/
      DATA (NHEL(I,  64),I=1,8) / 1,-1, 1,-1, 1,-1, 1,-1/
      DATA (NHEL(I,  65),I=1,8) / 1, 1,-1, 1,-1, 1,-1, 1/
      DATA (NHEL(I,  66),I=1,8) / 1, 1,-1, 1,-1, 1,-1,-1/
      DATA (NHEL(I,  67),I=1,8) / 1, 1,-1, 1,-1, 1, 1, 1/
      DATA (NHEL(I,  68),I=1,8) / 1, 1,-1, 1,-1, 1, 1,-1/
      DATA (NHEL(I,  69),I=1,8) / 1, 1,-1, 1,-1,-1,-1, 1/
      DATA (NHEL(I,  70),I=1,8) / 1, 1,-1, 1,-1,-1,-1,-1/
      DATA (NHEL(I,  71),I=1,8) / 1, 1,-1, 1,-1,-1, 1, 1/
      DATA (NHEL(I,  72),I=1,8) / 1, 1,-1, 1,-1,-1, 1,-1/
      DATA (NHEL(I,  73),I=1,8) / 1, 1,-1, 1, 1, 1,-1, 1/
      DATA (NHEL(I,  74),I=1,8) / 1, 1,-1, 1, 1, 1,-1,-1/
      DATA (NHEL(I,  75),I=1,8) / 1, 1,-1, 1, 1, 1, 1, 1/
      DATA (NHEL(I,  76),I=1,8) / 1, 1,-1, 1, 1, 1, 1,-1/
      DATA (NHEL(I,  77),I=1,8) / 1, 1,-1, 1, 1,-1,-1, 1/
      DATA (NHEL(I,  78),I=1,8) / 1, 1,-1, 1, 1,-1,-1,-1/
      DATA (NHEL(I,  79),I=1,8) / 1, 1,-1, 1, 1,-1, 1, 1/
      DATA (NHEL(I,  80),I=1,8) / 1, 1,-1, 1, 1,-1, 1,-1/
      DATA (NHEL(I,  81),I=1,8) / 1, 1,-1,-1,-1, 1,-1, 1/
      DATA (NHEL(I,  82),I=1,8) / 1, 1,-1,-1,-1, 1,-1,-1/
      DATA (NHEL(I,  83),I=1,8) / 1, 1,-1,-1,-1, 1, 1, 1/
      DATA (NHEL(I,  84),I=1,8) / 1, 1,-1,-1,-1, 1, 1,-1/
      DATA (NHEL(I,  85),I=1,8) / 1, 1,-1,-1,-1,-1,-1, 1/
      DATA (NHEL(I,  86),I=1,8) / 1, 1,-1,-1,-1,-1,-1,-1/
      DATA (NHEL(I,  87),I=1,8) / 1, 1,-1,-1,-1,-1, 1, 1/
      DATA (NHEL(I,  88),I=1,8) / 1, 1,-1,-1,-1,-1, 1,-1/
      DATA (NHEL(I,  89),I=1,8) / 1, 1,-1,-1, 1, 1,-1, 1/
      DATA (NHEL(I,  90),I=1,8) / 1, 1,-1,-1, 1, 1,-1,-1/
      DATA (NHEL(I,  91),I=1,8) / 1, 1,-1,-1, 1, 1, 1, 1/
      DATA (NHEL(I,  92),I=1,8) / 1, 1,-1,-1, 1, 1, 1,-1/
      DATA (NHEL(I,  93),I=1,8) / 1, 1,-1,-1, 1,-1,-1, 1/
      DATA (NHEL(I,  94),I=1,8) / 1, 1,-1,-1, 1,-1,-1,-1/
      DATA (NHEL(I,  95),I=1,8) / 1, 1,-1,-1, 1,-1, 1, 1/
      DATA (NHEL(I,  96),I=1,8) / 1, 1,-1,-1, 1,-1, 1,-1/
      DATA (NHEL(I,  97),I=1,8) / 1, 1, 1, 1,-1, 1,-1, 1/
      DATA (NHEL(I,  98),I=1,8) / 1, 1, 1, 1,-1, 1,-1,-1/
      DATA (NHEL(I,  99),I=1,8) / 1, 1, 1, 1,-1, 1, 1, 1/
      DATA (NHEL(I, 100),I=1,8) / 1, 1, 1, 1,-1, 1, 1,-1/
      DATA (NHEL(I, 101),I=1,8) / 1, 1, 1, 1,-1,-1,-1, 1/
      DATA (NHEL(I, 102),I=1,8) / 1, 1, 1, 1,-1,-1,-1,-1/
      DATA (NHEL(I, 103),I=1,8) / 1, 1, 1, 1,-1,-1, 1, 1/
      DATA (NHEL(I, 104),I=1,8) / 1, 1, 1, 1,-1,-1, 1,-1/
      DATA (NHEL(I, 105),I=1,8) / 1, 1, 1, 1, 1, 1,-1, 1/
      DATA (NHEL(I, 106),I=1,8) / 1, 1, 1, 1, 1, 1,-1,-1/
      DATA (NHEL(I, 107),I=1,8) / 1, 1, 1, 1, 1, 1, 1, 1/
      DATA (NHEL(I, 108),I=1,8) / 1, 1, 1, 1, 1, 1, 1,-1/
      DATA (NHEL(I, 109),I=1,8) / 1, 1, 1, 1, 1,-1,-1, 1/
      DATA (NHEL(I, 110),I=1,8) / 1, 1, 1, 1, 1,-1,-1,-1/
      DATA (NHEL(I, 111),I=1,8) / 1, 1, 1, 1, 1,-1, 1, 1/
      DATA (NHEL(I, 112),I=1,8) / 1, 1, 1, 1, 1,-1, 1,-1/
      DATA (NHEL(I, 113),I=1,8) / 1, 1, 1,-1,-1, 1,-1, 1/
      DATA (NHEL(I, 114),I=1,8) / 1, 1, 1,-1,-1, 1,-1,-1/
      DATA (NHEL(I, 115),I=1,8) / 1, 1, 1,-1,-1, 1, 1, 1/
      DATA (NHEL(I, 116),I=1,8) / 1, 1, 1,-1,-1, 1, 1,-1/
      DATA (NHEL(I, 117),I=1,8) / 1, 1, 1,-1,-1,-1,-1, 1/
      DATA (NHEL(I, 118),I=1,8) / 1, 1, 1,-1,-1,-1,-1,-1/
      DATA (NHEL(I, 119),I=1,8) / 1, 1, 1,-1,-1,-1, 1, 1/
      DATA (NHEL(I, 120),I=1,8) / 1, 1, 1,-1,-1,-1, 1,-1/
      DATA (NHEL(I, 121),I=1,8) / 1, 1, 1,-1, 1, 1,-1, 1/
      DATA (NHEL(I, 122),I=1,8) / 1, 1, 1,-1, 1, 1,-1,-1/
      DATA (NHEL(I, 123),I=1,8) / 1, 1, 1,-1, 1, 1, 1, 1/
      DATA (NHEL(I, 124),I=1,8) / 1, 1, 1,-1, 1, 1, 1,-1/
      DATA (NHEL(I, 125),I=1,8) / 1, 1, 1,-1, 1,-1,-1, 1/
      DATA (NHEL(I, 126),I=1,8) / 1, 1, 1,-1, 1,-1,-1,-1/
      DATA (NHEL(I, 127),I=1,8) / 1, 1, 1,-1, 1,-1, 1, 1/
      DATA (NHEL(I, 128),I=1,8) / 1, 1, 1,-1, 1,-1, 1,-1/
      DATA (NHEL(I, 129),I=1,8) /-1,-1,-1, 1,-1, 1,-1, 1/
      DATA (NHEL(I, 130),I=1,8) /-1,-1,-1, 1,-1, 1,-1,-1/
      DATA (NHEL(I, 131),I=1,8) /-1,-1,-1, 1,-1, 1, 1, 1/
      DATA (NHEL(I, 132),I=1,8) /-1,-1,-1, 1,-1, 1, 1,-1/
      DATA (NHEL(I, 133),I=1,8) /-1,-1,-1, 1,-1,-1,-1, 1/
      DATA (NHEL(I, 134),I=1,8) /-1,-1,-1, 1,-1,-1,-1,-1/
      DATA (NHEL(I, 135),I=1,8) /-1,-1,-1, 1,-1,-1, 1, 1/
      DATA (NHEL(I, 136),I=1,8) /-1,-1,-1, 1,-1,-1, 1,-1/
      DATA (NHEL(I, 137),I=1,8) /-1,-1,-1, 1, 1, 1,-1, 1/
      DATA (NHEL(I, 138),I=1,8) /-1,-1,-1, 1, 1, 1,-1,-1/
      DATA (NHEL(I, 139),I=1,8) /-1,-1,-1, 1, 1, 1, 1, 1/
      DATA (NHEL(I, 140),I=1,8) /-1,-1,-1, 1, 1, 1, 1,-1/
      DATA (NHEL(I, 141),I=1,8) /-1,-1,-1, 1, 1,-1,-1, 1/
      DATA (NHEL(I, 142),I=1,8) /-1,-1,-1, 1, 1,-1,-1,-1/
      DATA (NHEL(I, 143),I=1,8) /-1,-1,-1, 1, 1,-1, 1, 1/
      DATA (NHEL(I, 144),I=1,8) /-1,-1,-1, 1, 1,-1, 1,-1/
      DATA (NHEL(I, 145),I=1,8) /-1,-1,-1,-1,-1, 1,-1, 1/
      DATA (NHEL(I, 146),I=1,8) /-1,-1,-1,-1,-1, 1,-1,-1/
      DATA (NHEL(I, 147),I=1,8) /-1,-1,-1,-1,-1, 1, 1, 1/
      DATA (NHEL(I, 148),I=1,8) /-1,-1,-1,-1,-1, 1, 1,-1/
      DATA (NHEL(I, 149),I=1,8) /-1,-1,-1,-1,-1,-1,-1, 1/
      DATA (NHEL(I, 150),I=1,8) /-1,-1,-1,-1,-1,-1,-1,-1/
      DATA (NHEL(I, 151),I=1,8) /-1,-1,-1,-1,-1,-1, 1, 1/
      DATA (NHEL(I, 152),I=1,8) /-1,-1,-1,-1,-1,-1, 1,-1/
      DATA (NHEL(I, 153),I=1,8) /-1,-1,-1,-1, 1, 1,-1, 1/
      DATA (NHEL(I, 154),I=1,8) /-1,-1,-1,-1, 1, 1,-1,-1/
      DATA (NHEL(I, 155),I=1,8) /-1,-1,-1,-1, 1, 1, 1, 1/
      DATA (NHEL(I, 156),I=1,8) /-1,-1,-1,-1, 1, 1, 1,-1/
      DATA (NHEL(I, 157),I=1,8) /-1,-1,-1,-1, 1,-1,-1, 1/
      DATA (NHEL(I, 158),I=1,8) /-1,-1,-1,-1, 1,-1,-1,-1/
      DATA (NHEL(I, 159),I=1,8) /-1,-1,-1,-1, 1,-1, 1, 1/
      DATA (NHEL(I, 160),I=1,8) /-1,-1,-1,-1, 1,-1, 1,-1/
      DATA (NHEL(I, 161),I=1,8) /-1,-1, 1, 1,-1, 1,-1, 1/
      DATA (NHEL(I, 162),I=1,8) /-1,-1, 1, 1,-1, 1,-1,-1/
      DATA (NHEL(I, 163),I=1,8) /-1,-1, 1, 1,-1, 1, 1, 1/
      DATA (NHEL(I, 164),I=1,8) /-1,-1, 1, 1,-1, 1, 1,-1/
      DATA (NHEL(I, 165),I=1,8) /-1,-1, 1, 1,-1,-1,-1, 1/
      DATA (NHEL(I, 166),I=1,8) /-1,-1, 1, 1,-1,-1,-1,-1/
      DATA (NHEL(I, 167),I=1,8) /-1,-1, 1, 1,-1,-1, 1, 1/
      DATA (NHEL(I, 168),I=1,8) /-1,-1, 1, 1,-1,-1, 1,-1/
      DATA (NHEL(I, 169),I=1,8) /-1,-1, 1, 1, 1, 1,-1, 1/
      DATA (NHEL(I, 170),I=1,8) /-1,-1, 1, 1, 1, 1,-1,-1/
      DATA (NHEL(I, 171),I=1,8) /-1,-1, 1, 1, 1, 1, 1, 1/
      DATA (NHEL(I, 172),I=1,8) /-1,-1, 1, 1, 1, 1, 1,-1/
      DATA (NHEL(I, 173),I=1,8) /-1,-1, 1, 1, 1,-1,-1, 1/
      DATA (NHEL(I, 174),I=1,8) /-1,-1, 1, 1, 1,-1,-1,-1/
      DATA (NHEL(I, 175),I=1,8) /-1,-1, 1, 1, 1,-1, 1, 1/
      DATA (NHEL(I, 176),I=1,8) /-1,-1, 1, 1, 1,-1, 1,-1/
      DATA (NHEL(I, 177),I=1,8) /-1,-1, 1,-1,-1, 1,-1, 1/
      DATA (NHEL(I, 178),I=1,8) /-1,-1, 1,-1,-1, 1,-1,-1/
      DATA (NHEL(I, 179),I=1,8) /-1,-1, 1,-1,-1, 1, 1, 1/
      DATA (NHEL(I, 180),I=1,8) /-1,-1, 1,-1,-1, 1, 1,-1/
      DATA (NHEL(I, 181),I=1,8) /-1,-1, 1,-1,-1,-1,-1, 1/
      DATA (NHEL(I, 182),I=1,8) /-1,-1, 1,-1,-1,-1,-1,-1/
      DATA (NHEL(I, 183),I=1,8) /-1,-1, 1,-1,-1,-1, 1, 1/
      DATA (NHEL(I, 184),I=1,8) /-1,-1, 1,-1,-1,-1, 1,-1/
      DATA (NHEL(I, 185),I=1,8) /-1,-1, 1,-1, 1, 1,-1, 1/
      DATA (NHEL(I, 186),I=1,8) /-1,-1, 1,-1, 1, 1,-1,-1/
      DATA (NHEL(I, 187),I=1,8) /-1,-1, 1,-1, 1, 1, 1, 1/
      DATA (NHEL(I, 188),I=1,8) /-1,-1, 1,-1, 1, 1, 1,-1/
      DATA (NHEL(I, 189),I=1,8) /-1,-1, 1,-1, 1,-1,-1, 1/
      DATA (NHEL(I, 190),I=1,8) /-1,-1, 1,-1, 1,-1,-1,-1/
      DATA (NHEL(I, 191),I=1,8) /-1,-1, 1,-1, 1,-1, 1, 1/
      DATA (NHEL(I, 192),I=1,8) /-1,-1, 1,-1, 1,-1, 1,-1/
      DATA (NHEL(I, 193),I=1,8) /-1, 1,-1, 1,-1, 1,-1, 1/
      DATA (NHEL(I, 194),I=1,8) /-1, 1,-1, 1,-1, 1,-1,-1/
      DATA (NHEL(I, 195),I=1,8) /-1, 1,-1, 1,-1, 1, 1, 1/
      DATA (NHEL(I, 196),I=1,8) /-1, 1,-1, 1,-1, 1, 1,-1/
      DATA (NHEL(I, 197),I=1,8) /-1, 1,-1, 1,-1,-1,-1, 1/
      DATA (NHEL(I, 198),I=1,8) /-1, 1,-1, 1,-1,-1,-1,-1/
      DATA (NHEL(I, 199),I=1,8) /-1, 1,-1, 1,-1,-1, 1, 1/
      DATA (NHEL(I, 200),I=1,8) /-1, 1,-1, 1,-1,-1, 1,-1/
      DATA (NHEL(I, 201),I=1,8) /-1, 1,-1, 1, 1, 1,-1, 1/
      DATA (NHEL(I, 202),I=1,8) /-1, 1,-1, 1, 1, 1,-1,-1/
      DATA (NHEL(I, 203),I=1,8) /-1, 1,-1, 1, 1, 1, 1, 1/
      DATA (NHEL(I, 204),I=1,8) /-1, 1,-1, 1, 1, 1, 1,-1/
      DATA (NHEL(I, 205),I=1,8) /-1, 1,-1, 1, 1,-1,-1, 1/
      DATA (NHEL(I, 206),I=1,8) /-1, 1,-1, 1, 1,-1,-1,-1/
      DATA (NHEL(I, 207),I=1,8) /-1, 1,-1, 1, 1,-1, 1, 1/
      DATA (NHEL(I, 208),I=1,8) /-1, 1,-1, 1, 1,-1, 1,-1/
      DATA (NHEL(I, 209),I=1,8) /-1, 1,-1,-1,-1, 1,-1, 1/
      DATA (NHEL(I, 210),I=1,8) /-1, 1,-1,-1,-1, 1,-1,-1/
      DATA (NHEL(I, 211),I=1,8) /-1, 1,-1,-1,-1, 1, 1, 1/
      DATA (NHEL(I, 212),I=1,8) /-1, 1,-1,-1,-1, 1, 1,-1/
      DATA (NHEL(I, 213),I=1,8) /-1, 1,-1,-1,-1,-1,-1, 1/
      DATA (NHEL(I, 214),I=1,8) /-1, 1,-1,-1,-1,-1,-1,-1/
      DATA (NHEL(I, 215),I=1,8) /-1, 1,-1,-1,-1,-1, 1, 1/
      DATA (NHEL(I, 216),I=1,8) /-1, 1,-1,-1,-1,-1, 1,-1/
      DATA (NHEL(I, 217),I=1,8) /-1, 1,-1,-1, 1, 1,-1, 1/
      DATA (NHEL(I, 218),I=1,8) /-1, 1,-1,-1, 1, 1,-1,-1/
      DATA (NHEL(I, 219),I=1,8) /-1, 1,-1,-1, 1, 1, 1, 1/
      DATA (NHEL(I, 220),I=1,8) /-1, 1,-1,-1, 1, 1, 1,-1/
      DATA (NHEL(I, 221),I=1,8) /-1, 1,-1,-1, 1,-1,-1, 1/
      DATA (NHEL(I, 222),I=1,8) /-1, 1,-1,-1, 1,-1,-1,-1/
      DATA (NHEL(I, 223),I=1,8) /-1, 1,-1,-1, 1,-1, 1, 1/
      DATA (NHEL(I, 224),I=1,8) /-1, 1,-1,-1, 1,-1, 1,-1/
      DATA (NHEL(I, 225),I=1,8) /-1, 1, 1, 1,-1, 1,-1, 1/
      DATA (NHEL(I, 226),I=1,8) /-1, 1, 1, 1,-1, 1,-1,-1/
      DATA (NHEL(I, 227),I=1,8) /-1, 1, 1, 1,-1, 1, 1, 1/
      DATA (NHEL(I, 228),I=1,8) /-1, 1, 1, 1,-1, 1, 1,-1/
      DATA (NHEL(I, 229),I=1,8) /-1, 1, 1, 1,-1,-1,-1, 1/
      DATA (NHEL(I, 230),I=1,8) /-1, 1, 1, 1,-1,-1,-1,-1/
      DATA (NHEL(I, 231),I=1,8) /-1, 1, 1, 1,-1,-1, 1, 1/
      DATA (NHEL(I, 232),I=1,8) /-1, 1, 1, 1,-1,-1, 1,-1/
      DATA (NHEL(I, 233),I=1,8) /-1, 1, 1, 1, 1, 1,-1, 1/
      DATA (NHEL(I, 234),I=1,8) /-1, 1, 1, 1, 1, 1,-1,-1/
      DATA (NHEL(I, 235),I=1,8) /-1, 1, 1, 1, 1, 1, 1, 1/
      DATA (NHEL(I, 236),I=1,8) /-1, 1, 1, 1, 1, 1, 1,-1/
      DATA (NHEL(I, 237),I=1,8) /-1, 1, 1, 1, 1,-1,-1, 1/
      DATA (NHEL(I, 238),I=1,8) /-1, 1, 1, 1, 1,-1,-1,-1/
      DATA (NHEL(I, 239),I=1,8) /-1, 1, 1, 1, 1,-1, 1, 1/
      DATA (NHEL(I, 240),I=1,8) /-1, 1, 1, 1, 1,-1, 1,-1/
      DATA (NHEL(I, 241),I=1,8) /-1, 1, 1,-1,-1, 1,-1, 1/
      DATA (NHEL(I, 242),I=1,8) /-1, 1, 1,-1,-1, 1,-1,-1/
      DATA (NHEL(I, 243),I=1,8) /-1, 1, 1,-1,-1, 1, 1, 1/
      DATA (NHEL(I, 244),I=1,8) /-1, 1, 1,-1,-1, 1, 1,-1/
      DATA (NHEL(I, 245),I=1,8) /-1, 1, 1,-1,-1,-1,-1, 1/
      DATA (NHEL(I, 246),I=1,8) /-1, 1, 1,-1,-1,-1,-1,-1/
      DATA (NHEL(I, 247),I=1,8) /-1, 1, 1,-1,-1,-1, 1, 1/
      DATA (NHEL(I, 248),I=1,8) /-1, 1, 1,-1,-1,-1, 1,-1/
      DATA (NHEL(I, 249),I=1,8) /-1, 1, 1,-1, 1, 1,-1, 1/
      DATA (NHEL(I, 250),I=1,8) /-1, 1, 1,-1, 1, 1,-1,-1/
      DATA (NHEL(I, 251),I=1,8) /-1, 1, 1,-1, 1, 1, 1, 1/
      DATA (NHEL(I, 252),I=1,8) /-1, 1, 1,-1, 1, 1, 1,-1/
      DATA (NHEL(I, 253),I=1,8) /-1, 1, 1,-1, 1,-1,-1, 1/
      DATA (NHEL(I, 254),I=1,8) /-1, 1, 1,-1, 1,-1,-1,-1/
      DATA (NHEL(I, 255),I=1,8) /-1, 1, 1,-1, 1,-1, 1, 1/
      DATA (NHEL(I, 256),I=1,8) /-1, 1, 1,-1, 1,-1, 1,-1/
      DATA IDEN/36/

      INTEGER POLARIZATIONS(0:NEXTERNAL,0:5)
      COMMON/M6_BORN_BEAM_POL/POLARIZATIONS
      DATA ((POLARIZATIONS(I,J),I=0,NEXTERNAL),J=0,5)/NPOLENTRIES*-1/

C     
C     FUNCTIONS
C     
      LOGICAL M6_IS_BORN_HEL_SELECTED

C     ----------
C     Check if helreset mode is on
C     ---------
      IF (HELRESET) THEN
        NTRY = 0
        DO I=1,NCOMB
          GOODHEL(I) = .FALSE.
        ENDDO
        HELRESET = .FALSE.
      ENDIF

C     ----------
C     BEGIN CODE
C     ----------
      IF(USERHEL.EQ.-1) NTRY=NTRY+1
      DO IHEL=1,NEXTERNAL
        JC(IHEL) = +1
      ENDDO
C     When spin-2 particles are involved, the Helicity filtering is
C      dangerous for the 2->1 topology.
C     This is because depending on the MC setup the initial PS points
C      have back-to-back initial states
C     for which some of the spin-2 helicity configurations are zero.
C      But they are no longer zero
C     if the point is boosted on the z-axis. Remember that HELAS
C      helicity amplitudes are no longer
C     lorentz invariant with expternal spin-2 particles (only the
C      helicity sum is).
C     For this reason, we simply remove the filterin when there is
C      only three external particles.
      IF (NEXTERNAL.LE.3) THEN
        DO IHEL=1,NCOMB
          GOODHEL(IHEL)=.TRUE.
        ENDDO
      ENDIF
      ANS = 0D0
      DO IHEL=1,NCOMB
        IF (USERHEL.EQ.-1.OR.USERHEL.EQ.IHEL) THEN
          IF (GOODHEL(IHEL) .OR. NTRY .LT. 20.OR.USERHEL.NE.-1) THEN
            IF(NTRY.GE.2.AND.POLARIZATIONS(0,0).NE.
     $       -1.AND.(.NOT.M6_IS_BORN_HEL_SELECTED(IHEL))) THEN
              CYCLE
            ENDIF
            T=M6_MATRIX(P ,NHEL(1,IHEL),JC(1))
            IF(POLARIZATIONS(0,0).EQ.
     $       -1.OR.M6_IS_BORN_HEL_SELECTED(IHEL)) THEN
              ANS=ANS+T
            ENDIF
            IF (T .NE. 0D0 .AND. .NOT.    GOODHEL(IHEL)) THEN
              GOODHEL(IHEL)=.TRUE.
            ENDIF
          ENDIF
        ENDIF
      ENDDO
      ANS=ANS/DBLE(IDEN)
      IF(USERHEL.NE.-1) THEN
        ANS=ANS*HELAVGFACTOR
      ELSE
        DO J=1,NINITIAL
          IF (POLARIZATIONS(J,0).NE.-1) THEN
            ANS=ANS*BEAMS_HELAVGFACTOR(J)
            ANS=ANS/POLARIZATIONS(J,0)
          ENDIF
        ENDDO
      ENDIF
      END


      REAL*8 FUNCTION M6_MATRIX(P,NHEL,IC)
C     
C     Generated by MadGraph5_aMC@NLO v. 2.9.4, 2021-05-30
C     By the MadGraph5_aMC@NLO Development Team
C     Visit launchpad.net/madgraph5 and amcatnlo.web.cern.ch
C     
C     Returns amplitude squared -- no average over initial
C      state/symmetry factor
C     for the point with external lines W(0:6,NEXTERNAL)
C     
C     Process: u u~ > t t~ DIM6<=1 @1
C     *   Decay: t > b w+ DIM6=0
C     *     Decay: w+ > e+ ve DIM6=0
C     *   Decay: t~ > b~ w- DIM6=0
C     *     Decay: w- > mu- vm~ DIM6=0
C     
      IMPLICIT NONE
C     
C     CONSTANTS
C     
      INTEGER    NGRAPHS
      PARAMETER (NGRAPHS=17)
      INTEGER    NEXTERNAL
      PARAMETER (NEXTERNAL=8)
      INTEGER    NWAVEFUNCS, NCOLOR
      PARAMETER (NWAVEFUNCS=7, NCOLOR=2)
      REAL*8     ZERO
      PARAMETER (ZERO=0D0)
      COMPLEX*16 IMAG1
      PARAMETER (IMAG1=(0D0,1D0))
C     
C     ARGUMENTS 
C     
      REAL*8 P(0:3,NEXTERNAL)
      INTEGER NHEL(NEXTERNAL), IC(NEXTERNAL)
C     
C     LOCAL VARIABLES 
C     
      INTEGER I,J
      COMPLEX*16 ZTEMP
      REAL*8 CF(NCOLOR,NCOLOR)
      COMPLEX*16 AMP(NGRAPHS), JAMP(NCOLOR), TMP_JAMP(0)
      COMPLEX*16 W(20,NWAVEFUNCS)
      COMPLEX*16 DUM0,DUM1
      DATA DUM0, DUM1/(0D0, 0D0), (1D0, 0D0)/
C     
C     GLOBAL VARIABLES
C     
      INCLUDE 'coupl.inc'

C     
C     COLOR DATA
C     
      DATA (CF(I,  1),I=  1,  2) /9.000000000000000D+00
     $ ,3.000000000000000D+00/
C     1 T(2,1) T(3,6)
      DATA (CF(I,  2),I=  1,  2) /3.000000000000000D+00
     $ ,9.000000000000000D+00/
C     1 T(2,6) T(3,1)
C     ----------
C     BEGIN CODE
C     ----------
      CALL IXXXXX(P(0,1),ZERO,NHEL(1),+1*IC(1),W(1,1))
      CALL OXXXXX(P(0,2),ZERO,NHEL(2),-1*IC(2),W(1,2))
      CALL OXXXXX(P(0,3),MDL_MB,NHEL(3),+1*IC(3),W(1,3))
      CALL IXXXXX(P(0,4),ZERO,NHEL(4),-1*IC(4),W(1,4))
      CALL OXXXXX(P(0,5),ZERO,NHEL(5),+1*IC(5),W(1,5))
      CALL FFV2_3(W(1,4),W(1,5),GC_649,MDL_MW,MDL_WW,W(1,6))
      CALL FFV2_1(W(1,3),W(1,6),GC_649,MDL_MT,MDL_WT,W(1,5))
      CALL IXXXXX(P(0,6),MDL_MB,NHEL(6),-1*IC(6),W(1,6))
      CALL OXXXXX(P(0,7),ZERO,NHEL(7),+1*IC(7),W(1,3))
      CALL IXXXXX(P(0,8),ZERO,NHEL(8),-1*IC(8),W(1,4))
      CALL FFV2_3(W(1,4),W(1,3),GC_649,MDL_MW,MDL_WW,W(1,7))
      CALL FFV2_2(W(1,6),W(1,7),GC_649,MDL_MT,MDL_WT,W(1,4))
C     Amplitude(s) for diagram number 1
      CALL FFFF10_14_18_19_6_8_0(W(1,1),W(1,2),W(1,4),W(1,5),GC_472
     $ ,GC_575,GC_589,GC_592,GC_150,GC_471,AMP(1))
      CALL FFFF10_14_18_19_6_8_0(W(1,1),W(1,2),W(1,4),W(1,5),GC_474
     $ ,GC_576,GC_590,GC_593,GC_178,GC_473,AMP(2))
      CALL FFV1P0_3(W(1,1),W(1,2),GC_2,ZERO,ZERO,W(1,7))
C     Amplitude(s) for diagram number 2
      CALL FFV6_0(W(1,4),W(1,5),W(1,7),GC_2,AMP(3))
C     Amplitude(s) for diagram number 3
      CALL FFV11_9_0(W(1,4),W(1,5),W(1,7),GC_813,GC_814,AMP(4))
      CALL FFV1P0_3(W(1,1),W(1,2),GC_7,ZERO,ZERO,W(1,7))
C     Amplitude(s) for diagram number 4
      CALL FFV6_0(W(1,4),W(1,5),W(1,7),GC_7,AMP(5))
C     Amplitude(s) for diagram number 5
      CALL FFV11_9_0(W(1,4),W(1,5),W(1,7),GC_725,GC_726,AMP(6))
      CALL FFV2_8_3(W(1,1),W(1,2),GC_651,GC_660,MDL_MZ,MDL_WZ,W(1,7))
C     Amplitude(s) for diagram number 6
      CALL FFV2_8_0(W(1,4),W(1,5),W(1,7),GC_651,GC_660,AMP(7))
C     Amplitude(s) for diagram number 7
      CALL FFV4_0(W(1,4),W(1,5),W(1,7),GC_948,AMP(8))
C     Amplitude(s) for diagram number 8
      CALL FFV11_9_0(W(1,4),W(1,5),W(1,7),GC_721,GC_722,AMP(9))
C     Amplitude(s) for diagram number 9
      CALL FFV2_0(W(1,4),W(1,5),W(1,7),GC_938,AMP(10))
      CALL FFV10_3P0_3(W(1,1),W(1,5),GC_755,GC_752,ZERO,ZERO,W(1,7))
C     Amplitude(s) for diagram number 10
      CALL FFV10_3_0(W(1,4),W(1,2),W(1,7),GC_751,GC_756,AMP(11))
      CALL FFV2_4_3(W(1,1),W(1,5),GC_942,GC_950,MDL_MZ,MDL_WZ,W(1,7))
C     Amplitude(s) for diagram number 11
      CALL FFV2_4_0(W(1,4),W(1,2),W(1,7),GC_940,GC_949,AMP(12))
C     Amplitude(s) for diagram number 12
      CALL FFV10_3_0(W(1,4),W(1,2),W(1,7),GC_769,GC_774,AMP(13))
      CALL FFV10_3_3(W(1,1),W(1,5),GC_773,GC_770,MDL_MZ,MDL_WZ,W(1,7))
C     Amplitude(s) for diagram number 13
      CALL FFV2_4_0(W(1,4),W(1,2),W(1,7),GC_940,GC_949,AMP(14))
C     Amplitude(s) for diagram number 14
      CALL FFV10_3_0(W(1,4),W(1,2),W(1,7),GC_769,GC_774,AMP(15))
      CALL FFS1_3_3(W(1,1),W(1,5),GC_912,GC_915,MDL_MH,MDL_WH,W(1,7))
C     Amplitude(s) for diagram number 15
      CALL FFS1_3_0(W(1,4),W(1,2),W(1,7),GC_916,GC_911,AMP(16))
      CALL FFV10_3P0_3(W(1,1),W(1,5),GC_801,GC_798,ZERO,ZERO,W(1,7))
C     Amplitude(s) for diagram number 16
      CALL FFV10_3_0(W(1,4),W(1,2),W(1,7),GC_797,GC_802,AMP(17))
      JAMP(1)=+AMP(1)-1D0/6D0*AMP(2)+AMP(3)+AMP(4)-1D0/6D0*AMP(5)-1D0
     $ /6D0*AMP(6)+AMP(7)+AMP(8)+AMP(9)+AMP(10)-1D0/2D0*AMP(17)
      JAMP(2)=+1D0/2D0*AMP(2)+1D0/2D0*AMP(5)+1D0/2D0*AMP(6)-AMP(11)
     $ -AMP(12)-AMP(13)-AMP(14)-AMP(15)-AMP(16)+1D0/6D0*AMP(17)

      M6_MATRIX = 0.D0
      DO I = 1, NCOLOR
        ZTEMP = (0.D0,0.D0)
        DO J = 1, NCOLOR
          ZTEMP = ZTEMP + CF(J,I)*JAMP(J)
        ENDDO
        M6_MATRIX = M6_MATRIX+ZTEMP*DCONJG(JAMP(I))
      ENDDO

      END

      SUBROUTINE M6_GET_VALUE(P, ALPHAS, NHEL ,ANS)
      IMPLICIT NONE
C     
C     CONSTANT
C     
      INTEGER    NEXTERNAL
      PARAMETER (NEXTERNAL=8)
C     
C     ARGUMENTS 
C     
      REAL*8 P(0:3,NEXTERNAL),ANS
      INTEGER NHEL
      DOUBLE PRECISION ALPHAS
      REAL*8 PI
CF2PY INTENT(OUT) :: ANS
CF2PY INTENT(IN) :: NHEL
CF2PY INTENT(IN) :: P(0:3,NEXTERNAL)
CF2PY INTENT(IN) :: ALPHAS
C     ROUTINE FOR F2PY to read the benchmark point.    
C     the include file with the values of the parameters and masses 
      INCLUDE 'coupl.inc'

      PI = 3.141592653589793D0
      G = 2* DSQRT(ALPHAS*PI)
      CALL UPDATE_AS_PARAM()
      IF (NHEL.NE.0) THEN
        CALL M6_SMATRIXHEL(P, NHEL, ANS)
      ELSE
        CALL M6_SMATRIX(P, ANS)
      ENDIF
      RETURN
      END

      SUBROUTINE M6_INITIALISEMODEL(PATH)
C     ROUTINE FOR F2PY to read the benchmark point.    
      IMPLICIT NONE
      CHARACTER*512 PATH
CF2PY INTENT(IN) :: PATH
      CALL SETPARA(PATH)  !first call to setup the paramaters    
      RETURN
      END

      LOGICAL FUNCTION M6_IS_BORN_HEL_SELECTED(HELID)
      IMPLICIT NONE
C     
C     CONSTANTS
C     
      INTEGER    NEXTERNAL
      PARAMETER (NEXTERNAL=8)
      INTEGER    NCOMB
      PARAMETER (NCOMB=256)
C     
C     ARGUMENTS
C     
      INTEGER HELID
C     
C     LOCALS
C     
      INTEGER I,J
      LOGICAL FOUNDIT
C     
C     GLOBALS
C     
      INTEGER HELC(NEXTERNAL,NCOMB)
      COMMON/M6_PROCESS_NHEL/HELC

      INTEGER POLARIZATIONS(0:NEXTERNAL,0:5)
      COMMON/M6_BORN_BEAM_POL/POLARIZATIONS
C     ----------
C     BEGIN CODE
C     ----------

      M6_IS_BORN_HEL_SELECTED = .TRUE.
      IF (POLARIZATIONS(0,0).EQ.-1) THEN
        RETURN
      ENDIF

      DO I=1,NEXTERNAL
        IF (POLARIZATIONS(I,0).EQ.-1) THEN
          CYCLE
        ENDIF
        FOUNDIT = .FALSE.
        DO J=1,POLARIZATIONS(I,0)
          IF (HELC(I,HELID).EQ.POLARIZATIONS(I,J)) THEN
            FOUNDIT = .TRUE.
            EXIT
          ENDIF
        ENDDO
        IF(.NOT.FOUNDIT) THEN
          M6_IS_BORN_HEL_SELECTED = .FALSE.
          RETURN
        ENDIF
      ENDDO

      RETURN
      END


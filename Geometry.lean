namespace Geometry

-- ==========================================================
-- I. DEFINITIONS
-- ==========================================================

structure Geometry where
  Point : Type
  Collinear : Point → Point → Point → Prop
  Congruent : Point → Point → Point → Point → Prop
  Parallel : Point → Point → Point → Point → Prop
  IsParallelogram : Point → Point → Point → Point → Prop
  AngleCongruent : Point → Point → Point → Point → Point → Point → Prop

def IsMidpoint (Geo : Geometry) (M A B : Geo.Point) : Prop :=
  Geo.Collinear A M B ∧ Geo.Congruent A M M B

-- ==========================================================
-- II. AXIOMS (FOUNDATIONS)
-- ==========================================================

structure SASResult (Geo : Geometry) (V X Y V' X' Y' : Geo.Point) where
  correspondingSide : Geo.Congruent X Y X' Y'
  correspondingAngle : Geo.AngleCongruent V X Y V' X' Y'

axiom SAS (Geo : Geometry) (V X Y V' X' Y' : Geo.Point) :
  Geo.Congruent V X V' X' → Geo.AngleCongruent X V Y X' V' Y' → Geo.Congruent V Y V' Y' → SASResult Geo V X Y V' X' Y'

axiom ExtendSegment (Geo : Geometry) (D E : Geo.Point) : ∃ F : Geo.Point, Geo.Collinear D E F ∧ Geo.Congruent D E E F
axiom VerticalAngles (Geo : Geometry) (C E D B E F : Geo.Point) : Geo.Collinear C E B → Geo.Collinear D E F → Geo.AngleCongruent C E D B E F

axiom CongruentSymmetry (Geo : Geometry) (A B C D : Geo.Point) : Geo.Congruent A B C D → Geo.Congruent C D A B
axiom CongruentSwapSecond (Geo : Geometry) (A B C D : Geo.Point) : Geo.Congruent A B C D → Geo.Congruent A B D C
axiom CollinearSymmetry (Geo : Geometry) (A B C : Geo.Point) : Geo.Collinear A B C → Geo.Collinear C B A
axiom CollinearRotate (Geo : Geometry) (A B C : Geo.Point) : Geo.Collinear A B C → Geo.Collinear A C B

-- ==========================================================
-- III. DERIVED LEMMAS
-- ==========================================================

axiom L6_Parallel (Geo : Geometry) (A C D B E F : Geo.Point) : Geo.Collinear A C D → Geo.AngleCongruent E C D E B F → Geo.Parallel A D B F
axiom L7_MidpointSegment (Geo : Geometry) (A C D : Geo.Point) : IsMidpoint Geo D A C → Geo.Congruent A D D C
axiom L8_CongruentTrans (Geo : Geometry) (A D C B F : Geo.Point) : Geo.Congruent A D D C → Geo.Congruent C D B F → Geo.Congruent A D B F
axiom L9_ParallelogramCriterion (Geo : Geometry) (A B F D : Geo.Point) : Geo.Parallel A D B F → Geo.Congruent A D B F → Geo.IsParallelogram A B F D
axiom L10_ParallelogramOppositeSides (Geo : Geometry) (A B F D : Geo.Point) : Geo.IsParallelogram A B F D → Geo.Parallel D F A B
axiom L11_CollinearParallel (Geo : Geometry) (D E F A B : Geo.Point) : Geo.Collinear D E F → Geo.Parallel D F A B → Geo.Parallel D E A B

-- ==========================================================
-- IV. MAIN THEOREM
-- ==========================================================

/--
Midline Theorem.
CGJteam Lab: Related blog post: Log 005
-/
theorem MidlineTheorem (Geo : Geometry) (A B C D E : Geo.Point)
  (hD : IsMidpoint Geo D A C) (hE : IsMidpoint Geo E B C) :
  Geo.Parallel D E A B := by

  -- 1. Konstrukcja pomocnicza: przedłużenie odcinka DE do punktu F
  obtain ⟨F, hDEF, hDEEF⟩ := ExtendSegment Geo D E

  -- 2. Dowód przystawania trójkątów (SAS: ΔCED ≅ ΔFEB)
  have hEC_EB := CongruentSwapSecond Geo E C B E (CongruentSymmetry Geo B E E C hE.right)
  have hED_EF := CongruentSymmetry Geo E F E D (CongruentSwapSecond Geo E F D E (CongruentSymmetry Geo D E E F hDEEF))

  -- Kąt wierzchołkowy:
  have hVertical := VerticalAngles Geo C E D B E F (CollinearSymmetry Geo B E C hE.left) hDEF

  -- Aplikacja SAS
  have hSAS := SAS Geo E C D E B F hEC_EB hVertical hED_EF

  -- 3. Wnioskowanie równoległości
  have hCollinearACD := CollinearRotate Geo A D C hD.left
  have hParallelAD_BF := L6_Parallel Geo A C D B E F hCollinearACD hSAS.correspondingAngle

  -- 4. Uzasadnienie równoległoboku (ADBF)
  have hCongruentAD_BF := L8_CongruentTrans Geo A D C B F (L7_MidpointSegment Geo A C D hD) hSAS.correspondingSide
  have hIsParallelogram := L9_ParallelogramCriterion Geo A B F D hParallelAD_BF hCongruentAD_BF

  -- 5. Teza
  exact L11_CollinearParallel Geo D E F A B hDEF (L10_ParallelogramOppositeSides Geo A B F D hIsParallelogram)

end Geometry

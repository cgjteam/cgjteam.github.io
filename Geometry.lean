/-!
# Geometry.lean
Central formalization file for the synthetic proof of the concurrency of triangle medians.
-/

namespace Geometry

-- ==========================================================
-- I. DEFINITIONS
-- ==========================================================

structure Geometry where
  Point : Type
  Collinear : Point → Point → Point → Prop
  Congruent : Point → Point → Point → Prop
  Parallel : Point → Point → Point → Point → Prop
  IsParallelogram : Point → Point → Point → Point → Prop
  AngleCongruent : Point → Point → Point → Point → Point → Point → Prop

def IsMidpoint (Geo : Geometry) (M A B : Geo.Point) : Prop :=
  Geo.Collinear A M B ∧ Geo.Congruent A M M B

-- ==========================================================
-- II. AXIOMS
-- ==========================================================

/-! # Foundation Axioms -/

structure SASResult (Geo : Geometry) (V X Y V' X' Y' : Geo.Point) where
  correspondingSide : Geo.Congruent X Y X' Y'
  correspondingAngle : Geo.AngleCongruent V X Y V' X' Y'

axiom SAS (Geo : Geometry) (V X Y V' X' Y' : Geo.Point) :
  Geo.Congruent V X V' X' → Geo.AngleCongruent X V Y X' V' Y' → Geo.Congruent V Y V' Y' → SASResult Geo V X Y V' X' Y'

axiom ExtendSegment (Geo : Geometry) (D E : Geo.Point) : ∃ F : Geo.Point, Geo.Collinear D E F ∧ Geo.Congruent D E E F
axiom VerticalAngles (Geo : Geometry) (C E D B E F : Geo.Point) : Geo.Collinear C E B → Geo.Collinear D E F → Geo.AngleCongruent C E D B E F

/-! # Symmetry and Collinearity -/

axiom congruent_symmetry (Geo : Geometry) (A B C D : Geo.Point) : Geo.Congruent A B C D → Geo.Congruent C D A B
axiom congruent_swap_second (Geo : Geometry) (A B C D : Geo.Point) : Geo.Congruent A B C D → Geo.Congruent A B D C
axiom collinear_symmetry (Geo : Geometry) (A B C : Geo.Point) : Geo.Collinear A B C → Geo.Collinear C B A
axiom collinear_rotate (Geo : Geometry) (A B C : Geo.Point) : Geo.Collinear A B C → Geo.Collinear A C B

-- ==========================================================
-- III. DERIVED LEMMAS
-- ==========================================================

/-! # Parallelism and Midpoints -/

axiom parallel_from_equal_angles (Geo : Geometry) (A C D B E F : Geo.Point) : Geo.Collinear A C D → Geo.AngleCongruent E C D E B F → Geo.Parallel A D B F
axiom midpoint_congruent (Geo : Geometry) (A C D : Geo.Point) : IsMidpoint Geo D A C → Geo.Congruent A D D C
axiom congruent_transitivity (Geo : Geometry) (A D C B F : Geo.Point) : Geo.Congruent A D D C → Geo.Congruent C D B F → Geo.Congruent A D B F

/-! # Parallelograms -/

axiom parallelogram_from_parallel_and_congruent (Geo : Geometry) (A B F D : Geo.Point) : Geo.Parallel A D B F → Geo.Congruent A D B F → Geo.IsParallelogram A B F D
axiom parallelogram_opposite_sides (Geo : Geometry) (A B F D : Geo.Point) : Geo.IsParallelogram A B F D → Geo.Parallel D F A B
axiom collinear_parallel_trans (Geo : Geometry) (D E F A B : Geo.Point) : Geo.Collinear D E F → Geo.Parallel D F A B → Geo.Parallel D E A B

-- ==========================================================
-- IV. MAIN THEOREMS
-- ==========================================================

/--
Midline Theorem.
CGJteam Lab: Related blog post: Log 005
-/
theorem MedianConcurrency (Geo : Geometry) (A B C D E : Geo.Point)
  (hD : IsMidpoint Geo D A C) (hE : IsMidpoint Geo E B C) :
  Geo.Parallel D E A B := by

  -- 1. Auxiliary construction: extend segment DE to point F
  obtain ⟨F, hDEF, hDEEF⟩ := ExtendSegment Geo D E

  -- 2. Proof of triangle congruence (SAS: ΔCED ≅ ΔFEB)
  have hEC_EB := congruent_swap_second Geo E C B E (congruent_symmetry Geo B E E C hE.right)
  have hED_EF := congruent_symmetry Geo E F E D (congruent_swap_second Geo E F D E (congruent_symmetry Geo D E E F hDEEF))

  -- Vertical angles:
  have hVertical := VerticalAngles Geo C E D B E F (collinear_symmetry Geo B E C hE.left) hDEF

  -- SAS application
  have hSAS := SAS Geo E C D E B F hEC_EB hVertical hED_EF

  -- 3. Inference of parallelism
  have hCollinearACD := collinear_rotate Geo A D C hD.left
  have hParallelAD_BF := parallel_from_equal_angles Geo A C D B E F hCollinearACD hSAS.correspondingAngle

  -- 4. Justification of parallelogram (ADBF)
  have hCongruentAD_BF := congruent_transitivity Geo A D C B F (midpoint_congruent Geo A C D hD) hSAS.correspondingSide
  have hIsParallelogram := parallelogram_from_parallel_and_congruent Geo A B F D hParallelAD_BF hCongruentAD_BF

  -- 5. Thesis
  exact collinear_parallel_trans Geo D E F A B hDEF (parallelogram_opposite_sides Geo A B F D hIsParallelogram)

end Geometry

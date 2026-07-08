# Geometry.lean - Implementation
[Wróć do indeksu](./Geometry.md)

```lean
-- Geometry.lean - CGJteam Lab
-- Single Source of Truth

-- Definitions
def IsMidpoint (A M B : Point) : Prop :=
  Collinear A M B ∧ Congruent A M M B

-- Axioms
axiom SAS (A B C A' B' C' : Point) : 
  Congruent A B A' B' → Congruent A C A' C' → AngleCongruent A B C A' B' C' → Congruent B C B' C'

axiom ExtendSegment (A B : Point) : ∃ C, Collinear A B C ∧ Congruent B C A B

-- Lemmas
lemma parallel_from_equal_angles (A B C D : Point) : 
  AngleCongruent A B C D E F → Parallel A B C D

lemma midpoint_congruent (A M B : Point) : 
  IsMidpoint A M B → Congruent A M M B

lemma congruent_transitivity (A B C D E F : Point) : 
  Congruent A B C D → Congruent C D E F → Congruent A B E F

lemma parallelogram_from_parallel_and_congruent (A B C D : Point) : 
  Parallel A B C D → Congruent A B C D → IsParallelogram A B C D

lemma parallelogram_opposite_sides (A B C D : Point) : 
  IsParallelogram A B C D → Congruent A B C D

lemma collinear_parallel_trans (A B C D : Point) : 
  Collinear A B C → Parallel B D E F → Parallel A D E F

-- Main Theorem
theorem MidlineTheorem (A B C M N : Point) : 
  IsMidpoint A M B → IsMidpoint A N C → Parallel M N B C ∧ Congruent M N (1/2) B C :=
begin
  -- Synthetic proof construction
  sorry
end

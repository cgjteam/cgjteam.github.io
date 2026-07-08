# Geometry Library Index

This document is the architectural map of the CGJteam Lab formalization project. It provides the metadata for all mathematical objects, their dependencies, and their status.

## Definitions

### IsMidpoint
- **Lean declaration:** `IsMidpoint`
- **Mathematical Role:** Definition
- **Depends on:** `Collinear`, `Congruent`
- **Used by:** `midpoint_congruent`, `MidlineTheorem`
- **Related logs:** Log 002
- **Origin:** Classical geometry
- **Status:** Verified

## Axioms (Foundations)

### SAS (Side-Angle-Side)
- **Lean declaration:** `SAS`
- **Mathematical Role:** Axiom
- **Depends on:** N/A
- **Used by:** `MidlineTheorem`
- **Related logs:** Log 003
- **Origin:** Classical geometry
- **Status:** Verified

### ExtendSegment
- **Lean declaration:** `ExtendSegment`
- **Mathematical Role:** Axiom
- **Depends on:** N/A
- **Used by:** `MidlineTheorem`
- **Related logs:** Log 004
- **Origin:** Classical geometry
- **Status:** Verified

## Derived Lemmas

### parallel_from_equal_angles
- **Lean declaration:** `parallel_from_equal_angles`
- **Mathematical Role:** Lemma
- **Depends on:** `Collinear`, `AngleCongruent`
- **Used by:** `MidlineTheorem`
- **Related logs:** Log 006
- **Origin:** Classical geometry
- **Status:** Verified

### midpoint_congruent
- **Lean declaration:** `midpoint_congruent`
- **Mathematical Role:** Lemma
- **Depends on:** `IsMidpoint`
- **Used by:** `MidlineTheorem`
- **Related logs:** Log 005
- **Origin:** Classical geometry
- **Status:** Verified

### congruent_transitivity
- **Lean declaration:** `congruent_transitivity`
- **Mathematical Role:** Lemma
- **Depends on:** `Congruent`
- **Used by:** `MidlineTheorem`
- **Related logs:** Log 006
- **Origin:** Classical geometry
- **Status:** Verified

### parallelogram_from_parallel_and_congruent
- **Lean declaration:** `parallelogram_from_parallel_and_congruent`
- **Mathematical Role:** Lemma
- **Depends on:** `Parallel`, `Congruent`
- **Used by:** `MidlineTheorem`
- **Related logs:** Log 007
- **Status:** Verified

### parallelogram_opposite_sides
- **Lean declaration:** `parallelogram_opposite_sides`
- **Mathematical Role:** Lemma
- **Depends on:** `IsParallelogram`
- **Used by:** `MidlineTheorem`
- **Related logs:** Log 007
- **Origin:** Classical geometry
- **Status:** Verified

### collinear_parallel_trans
- **Lean declaration:** `collinear_parallel_trans`
- **Mathematical Role:** Lemma
- **Depends on:** `Collinear`, `Parallel`
- **Used by:** `MidlineTheorem`
- **Related logs:** Log 007
- **Origin:** Classical geometry
- **Status:** Verified

## Main Theorems

### MidlineTheorem
- **Lean declaration:** `MidlineTheorem`
- **Mathematical Role:** Theorem
- **Depends on:** `ExtendSegment`, `SAS`, `collinear_rotate`, `parallel_from_equal_angles`, `midpoint_congruent`, `congruent_transitivity`, `parallelogram_from_parallel_and_congruent`, `collinear_parallel_trans`
- **Used by:** N/A (Project start)
- **Related logs:** Log 005
- **Origin:** Classical geometry
- **Status:** Verified

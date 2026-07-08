# Geometry Library Index
Version: 1.0
Last updated: 2026-07-08

## Repository
- **Main Lean source:** [View Geometry implementation](./Geometry_code.md)
    
This document serves as the architectural map of the CGJteam Lab formalization project.

## Definitions

### IsMidpoint
- **ID:** DEF-001
- **Lean declaration:** `IsMidpoint`
- **Kind:** Definition
- **Mathematical dependencies:** Collinearity, Segment congruence
- **Lean dependencies:** `Collinear`, `Congruent`
- **Used by:** `midpoint_congruent`, `MidlineTheorem`
- **Related logs:** Log 002
- **Origin:** Classical geometry
- **Current implementation:** Geometry.lean
- **Documentation Status:** Stable
- **Formalization Status:** Verified

## Axioms (Foundations)

### SAS (Side-Angle-Side)
- **ID:** AXM-001
- **Lean declaration:** `SAS`
- **Kind:** Axiom
- **Mathematical dependencies:** Congruence
- **Lean dependencies:** N/A
- **Used by:** `MidlineTheorem`
- **Related logs:** Log 003
- **Origin:** Classical geometry
- **Current implementation:** Geometry.lean
- **Remarks:** Foundation of congruence proofs.
- **Documentation Status:** Stable
- **Formalization Status:** Verified

### ExtendSegment
- **ID:** AXM-002
- **Lean declaration:** `ExtendSegment`
- **Kind:** Axiom
- **Mathematical dependencies:** Segment construction
- **Lean dependencies:** N/A
- **Used by:** `MidlineTheorem`
- **Related logs:** Log 004
- **Origin:** Classical geometry
- **Current implementation:** Geometry.lean
- **Remarks:** Enables auxiliary point construction.
- **Documentation Status:** Stable
- **Formalization Status:** Verified

## Derived Lemmas

### parallel_from_equal_angles
- **ID:** LEM-001
- **Lean declaration:** `parallel_from_equal_angles`
- **Kind:** Lemma
- **Proof Method:** Synthetic
- **Mathematical dependencies:** Parallelism
- **Lean dependencies:** `Collinear`, `AngleCongruent`
- **Used by:** `MidlineTheorem`
- **Related logs:** Log 006
- **Origin:** Classical geometry
- **Current implementation:** Geometry.lean
- **Documentation Status:** Stable
- **Formalization Status:** Verified

### midpoint_congruent
- **ID:** LEM-002
- **Lean declaration:** `midpoint_congruent`
- **Kind:** Lemma
- **Proof Method:** Synthetic
- **Mathematical dependencies:** Midpoints, Segment congruence
- **Lean dependencies:** `IsMidpoint`
- **Used by:** `MidlineTheorem`
- **Related logs:** Log 005
- **Origin:** Classical geometry
- **Current implementation:** Geometry.lean
- **Documentation Status:** Stable
- **Formalization Status:** Verified

### congruent_transitivity
- **ID:** LEM-003
- **Lean declaration:** `congruent_transitivity`
- **Kind:** Lemma
- **Proof Method:** Synthetic
- **Mathematical dependencies:** Congruence
- **Lean dependencies:** `Congruent`
- **Used by:** `MidlineTheorem`
- **Related logs:** Log 006
- **Origin:** Classical geometry
- **Current implementation:** Geometry.lean
- **Documentation Status:** Stable
- **Formalization Status:** Verified

### parallelogram_from_parallel_and_congruent
- **ID:** LEM-004
- **Lean declaration:** `parallelogram_from_parallel_and_congruent`
- **Kind:** Lemma
- **Proof Method:** Synthetic
- **Mathematical dependencies:** Parallelograms
- **Lean dependencies:** `Parallel`, `Congruent`
- **Used by:** `MidlineTheorem`
- **Related logs:** Log 007
- **Origin:** Classical geometry
- **Current implementation:** Geometry.lean
- **Documentation Status:** Stable
- **Formalization Status:** Verified

### parallelogram_opposite_sides
- **ID:** LEM-005
- **Lean declaration:** `parallelogram_opposite_sides`
- **Kind:** Lemma
- **Proof Method:** Synthetic
- **Mathematical dependencies:** Parallelograms
- **Lean dependencies:** `IsParallelogram`
- **Used by:** `MidlineTheorem`
- **Related logs:** Log 007
- **Origin:** Classical geometry
- **Current implementation:** Geometry.lean
- **Documentation Status:** Stable
- **Formalization Status:** Verified

### collinear_parallel_trans
- **ID:** LEM-006
- **Lean declaration:** `collinear_parallel_trans`
- **Kind:** Lemma
- **Proof Method:** Synthetic
- **Mathematical dependencies:** Parallelism, Collinearity
- **Lean dependencies:** `Collinear`, `Parallel`
- **Used by:** `MidlineTheorem`
- **Related logs:** Log 007
- **Origin:** Classical geometry
- **Current implementation:** Geometry.lean
- **Documentation Status:** Stable
- **Formalization Status:** Verified

## Main Theorems

### MidlineTheorem
- **ID:** THM-001
- **Lean declaration:** `MidlineTheorem`
- **Kind:** Theorem
- **Proof Method:** Synthetic
- **Mathematical dependencies:** Midpoints, Parallelism, Parallelograms
- **Lean dependencies:** `ExtendSegment`, `SAS`, `collinear_rotate`, `parallel_from_equal_angles`, `midpoint_congruent`, `congruent_transitivity`, `parallelogram_from_parallel_and_congruent`, `collinear_parallel_trans`
- **Used by:** N/A
- **Related logs:** Log 005
- **Origin:** Classical geometry
- **Current implementation:** Geometry.lean
- **Remarks:** Synthetic proof construction.
- **Documentation Status:** Stable
- **Formalization Status:** Verified

# Geometry Library Index

This document acts as the central architectural registry for the CGJteam Lab project. It maps the formal geometry library, ensuring stable references between Research Logs, the formal implementation (`Geometry.lean`), and permanent mathematical identifiers.

## Library Architecture
The formal library is organized into four hierarchical layers, following mathematical dependencies:
1. **Definitions (DEF-xxx):** Geometric primitives and predicates.
2. **Axioms (AXM-xxx):** Fundamental assumptions.
3. **Derived Lemmas (LEM-xxx):** Properties and intermediate results.
4. **Main Theorems (THM-xxx):** Major formal developments.

## Identifier System
Identifiers are permanent and independent of source-code location. This ensures documentation stability even after library refactoring.

---

## Formal Objects Registry

### DEF-001 — IsMidpoint
- **Lean declaration:** `IsMidpoint`
- **Kind:** Definition
- **Description:** Predicate defining a point as the midpoint of a line segment.
- **Mathematical dependencies:** Collinearity, Segment congruence
- **Lean dependencies:** `Collinear`, `Congruent`
- **Used by:** `midpoint_congruent`, `MidlineTheorem`
- **Related logs:** [Log 002](log-002.html)
- **Origin:** Classical geometry
- **Implementation status:** Implemented
- **Documentation status:** Stable
- **Remarks:** Fundamental for all segment partitioning proofs.

### AXM-001 — SAS (Side-Angle-Side)
- **Lean declaration:** `SAS`
- **Kind:** Axiom
- **Description:** Foundation of triangle congruence.
- **Mathematical dependencies:** Congruence
- **Lean dependencies:** N/A
- **Used by:** `MidlineTheorem`
- **Related logs:** [Log 003](log-003.html)
- **Origin:** Classical geometry
- **Implementation status:** Implemented
- **Documentation status:** Stable
- **Remarks:** Core axiom for congruence.

### AXM-002 — ExtendSegment
- **Lean declaration:** `ExtendSegment`
- **Kind:** Axiom
- **Description:** Construction of auxiliary points on a line.
- **Mathematical dependencies:** Segment construction
- **Lean dependencies:** N/A
- **Used by:** `MidlineTheorem`
- **Related logs:** [Log 004](log-004.html)
- **Origin:** Classical geometry
- **Implementation status:** Implemented
- **Documentation status:** Stable

### LEM-001 — parallel_from_equal_angles
- **Lean declaration:** `parallel_from_equal_angles`
- **Kind:** Lemma
- **Description:** Derived parallelism from angle congruence.
- **Mathematical dependencies:** Parallelism
- **Lean dependencies:** `Collinear`, `AngleCongruent`
- **Used by:** `MidlineTheorem`
- **Related logs:** [Log 006](log-006.html)
- **Implementation status:** Implemented
- **Documentation status:** Stable

### LEM-002 — midpoint_congruent
- **Lean declaration:** `midpoint_congruent`
- **Kind:** Lemma
- **Mathematical dependencies:** Midpoints, Segment congruence
- **Lean dependencies:** `IsMidpoint`
- **Used by:** `MidlineTheorem`
- **Related logs:** [Log 005](log-005.html)
- **Implementation status:** Implemented

### LEM-003 — congruent_transitivity
- **Lean declaration:** `congruent_transitivity`
- **Kind:** Lemma
- **Mathematical dependencies:** Congruence
- **Lean dependencies:** `Congruent`
- **Used by:** `MidlineTheorem`
- **Related logs:** [Log 006](log-006.html)
- **Implementation status:** Implemented

### LEM-004 — parallelogram_from_parallel_and_congruent
- **Lean declaration:** `parallelogram_from_parallel_and_congruent`
- **Kind:** Lemma
- **Mathematical dependencies:** Parallelograms
- **Lean dependencies:** `Parallel`, `Congruent`
- **Used by:** `MidlineTheorem`
- **Related logs:** [Log 007](log-007.html)
- **Implementation status:** Implemented

### LEM-005 — parallelogram_opposite_sides
- **Lean declaration:** `parallelogram_opposite_sides`
- **Kind:** Lemma
- **Mathematical dependencies:** Parallelograms
- **Lean dependencies:** `IsParallelogram`
- **Used by:** `MidlineTheorem`
- **Related logs:** [Log 007](log-007.html)
- **Implementation status:** Implemented

### LEM-006 — collinear_parallel_trans
- **Lean declaration:** `collinear_parallel_trans`
- **Kind:** Lemma
- **Mathematical dependencies:** Parallelism, Collinearity
- **Lean dependencies:** `Collinear`, `Parallel`
- **Used by:** `MidlineTheorem`
- **Related logs:** [Log 007](log-007.html)
- **Implementation status:** Implemented

### THM-001 — MidlineTheorem
- **Lean declaration:** `MidlineTheorem`
- **Kind:** Theorem
- **Description:** Synthetic proof of the midline theorem.
- **Mathematical dependencies:** Midpoints, Parallelism, Parallelograms
- **Lean dependencies:** `ExtendSegment`, `SAS`, `collinear_rotate`, `parallel_from_equal_angles`, `midpoint_congruent`, `congruent_transitivity`, `parallelogram_from_parallel_and_congruent`, `collinear_parallel_trans`
- **Related logs:** [Log 005](log-005.html)
- **Implementation status:** Implemented
- **Documentation status:** Stable

---

## Roadmap
- **Planned:** DEF-002 (TriangleAngleSum), LEM-007 (ParallelPostulateVariant)
- **Active Research:** Analysis of synthetic proof construction.

## Dependency Graph
*(Textual registry: Objects reference dependencies via stable identifiers listed above.)*

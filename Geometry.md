---
layout: default
---

# Geometry Library Index

**Version:** 1.4  
**Status:** First Stable Milestone

---

## Repository

- **Geometry implementation:** [View Geometry.lean](./Geometry_lean.html)

---

## 1. Library Architecture

The library is developed through the formal verification of classical synthetic geometry proofs.

The current architecture emerged from the formalization of Ian Finlay's proof of the concurrency of triangle medians.

The library is organized into the following layers:

- **Basic Structures** - Fundamental geometric objects and predicates.
- **Primitive Axioms** - Minimal assumptions required by formal proofs.
- **Elementary Geometric Lemmas** - Reusable synthetic transformations.
- **Synthetic Proof Steps** - Complete intermediate arguments extracted from classical proofs.
- **Main Formal Proofs** - Complete verified geometric results.

---

## 2. Development Philosophy

The Geometry Library is not designed as a complete axiomatic geometry system in advance.

Instead, mathematical structures and reusable components emerge from the formal analysis of concrete synthetic proofs.

The formalization process separates:

- geometric intuition,
- necessary logical dependencies,
- reusable mathematical arguments.

The resulting library grows from verified mathematics rather than from a predefined implementation framework.

---

## 3. Design Principles

1. Primitive geometric assumptions are kept explicit.
2. Reusable arguments are separated from individual proofs.
3. Classical synthetic reasoning is preserved in the formal structure.
4. The library grows through mathematical dependencies revealed by proofs.
5. Formal statements should reflect mathematical meaning.

---

## 4. Current Library Structure

| Layer | Representative components |
| :--- | :--- |
| **Basic Structures** | `Geo`, `Point`, `Collinear`, `Parallel`, `IsMidpoint`, `IsMedian`, `IsParallelogram` |
| **Basic Definitions** | `IsIntersection` |
| **Elementary Lemmas** | `midpoint_collinear`, `collinear_swap`, `MidsegmentTheorem`, `ParallelCollinearLeft` |
| **Parallelogram Tools** | `ParallelSymm`, `ParallelFlipRight`, `ParallelogramOfParallel`, `ParallelogramDiagonals` |
| **Synthetic Proof Steps** | `FinlayStep1`, `FinlayStep2`, `FinlayStep3`, `FinlayStep4`, `FinlayStep5` |
| **Main Formal Proofs** | `Finlay` |

---

## 5. First Formal Result

The first complete formal proof verifies Ian Finlay's synthetic construction for the concurrency of triangle medians.

The proof is decomposed into five independent steps:

1. Midsegment theorem produces the required parallel lines.
2. Parallel lines define a parallelogram.
3. The intersection point is transferred to the diagonal.
4. Diagonals of the parallelogram determine the midpoint of the opposite side.
5. The midpoint property gives the third median.

The final theorem proves:

- `AD` is a median of triangle `ABC`.
- The centroid point `G` lies on `AD`.

Therefore all three medians are concurrent.

---

## 6. Current Status

The current version contains:

- a minimal geometric structure,
- basic synthetic lemmas,
- reusable proof components,
- a complete formal verification of Finlay's synthetic proof.

The first milestone establishes the methodology for future development of the library.

---

## 7. Future Development

Future work will extend the library through additional classical synthetic constructions.

Possible directions include:

- further triangle geometry results,
- systematic development of parallelogram theory,
- reusable synthetic transformations,
- comparison of different proof perspectives.

The long-term goal is a coherent reusable library for formal synthetic geometry.

---

## 8. Library Evolution

The current development follows the following pattern:

1. Formal verification of a classical proof.
2. Extraction of reusable mathematical components.
3. Development of independent geometric theories.
4. Refinement of library architecture.
5. Expansion toward a general synthetic geometry framework.

This evolution is documented in the accompanying development logs.

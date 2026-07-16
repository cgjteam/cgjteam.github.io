---
layout: default
---

# Geometry Library Index

**Version:** 1.3  
**Status:** Stable (Reusable Geometry Library)

---

## Repository

- **Geometry implementation:** [View Geometry.lean](./Geometry_lean.html)

---

## 1. Library Architecture

The library is organized into mathematical layers that emerged during the formal verification of classical synthetic geometry.

- **Basic Structures & Definitions** – Fundamental geometric objects and predicates.
- **Primitive Axioms** – Minimal axiomatic foundation of the library.
- **Elementary Transformations** – Reusable symmetry and orientation theorems.
- **Accessor Theorems** – Direct access to components of compound geometric definitions.
- **Synthetic Arguments** – Complete reusable geometric arguments extracted from formal proofs.
- **Geometric Theories** – Independent mathematical theories developed from reusable arguments.
- **Main Formal Proofs** – Complete verified synthetic proofs.

---

## 2. Development Philosophy

The Geometry Library is developed incrementally through the formalization of carefully selected classical synthetic proofs.

Rather than designing a complete geometry library in advance, reusable mathematical structures are allowed to emerge naturally from completed formal developments.

The first complete formalization also demonstrated that building verified proofs is only one part of the process. Understanding the resulting architecture and organizing reusable mathematical components become equally important as the library continues to evolve.

---

## 3. Design Principles

1. The library is organized around mathematical theories rather than individual proofs.
2. Frequently recurring synthetic arguments are encapsulated as reusable theorems.
3. Primitive axioms are intentionally kept to a minimum.
4. Internal implementation details are separated from the public theorem interface.
5. The naming policy reflects mathematical meaning rather than historical origin.
6. The architecture of the library should remain understandable as the collection of formal proofs grows.

---

## 4. Current Library Structure

| Layer | Representative components |
| :--- | :--- |
| **Basic Structures** | `IsMidpoint`, `IsMedianIntersection`, `IsSegmentIntersection`, `IsParallelogram` |
| **Elementary Transformations** | `MidpointSymmetry`, `ParallelSymmetry`, `ParallelSwapFirstLine`, `ParallelSwapSecondLine`, `ParallelSwapBoth` |
| **Accessor Theorems** | `MedianIntersectionCollinearCGF`, `MedianIntersectionCollinearBGE`, `SegmentIntersectionCollinearADP`, `SegmentIntersectionCollinearBDC` |
| **Synthetic Arguments** | `MidsegmentParallel` |
| **Parallelogram Theory** | `ParallelogramParallelCharacterization`, `ParallelogramOppositeSidesParallel`, `ParallelogramOppositeSidesCongruent`, `ParallelogramDiagonalsBisect`, `OnePairParallelCongruentRecognition`, `ParallelogramParallelRecognition` |
| **Main Formal Proofs** | `FinlayProof` |

---

## 5. Current Status

The current version of the library contains:

- a stable collection of basic geometric structures,
- a reusable API for elementary synthetic transformations,
- accessor theorems for compound geometric definitions,
- reusable synthetic arguments,
- the first independent theory of parallelograms,
- a complete formal verification of Finlay's proof.

The completion of the first full formalization marks the transition from constructing individual proofs toward developing a coherent reusable geometry library.

---

## 6. Roadmap

Future development will continue through additional classical results in synthetic geometry.

Alongside new formal proofs, increasing attention will be devoted to maintaining a coherent library architecture, refining reusable mathematical interfaces, and organizing independent geometric theories that naturally emerge from successive formalizations.

---

## 7. Library Evolution

The development of the library currently follows five successive stages:

1. Formal verification of a classical synthetic proof.
2. Extraction of reusable synthetic arguments.
3. Construction of independent mathematical theories.
4. Continuous refinement of the library architecture.
5. Gradual expansion into a general-purpose synthetic geometry library.

This evolution is documented in the accompanying development logs.

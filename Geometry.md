---
layout: default
---

# Geometry Library Index

**Version:** 1.2  
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

The Geometry Library is developed incrementally.

Rather than designing a complete geometry library in advance, new abstractions emerge naturally during the formalization of classical synthetic proofs.

Whenever a mathematical argument appears repeatedly in independent developments, it is encapsulated as a reusable theorem.

As these reusable components accumulate, they gradually evolve into independent mathematical theories.

---

## 3. Design Principles

1. The library is organized around mathematical theories rather than individual proofs.
2. Frequently recurring synthetic arguments are encapsulated as reusable theorems.
3. Primitive axioms are intentionally kept to a minimum.
4. Internal implementation details are separated from the public theorem interface.
5. The naming policy reflects mathematical meaning rather than historical origin.

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
- a complete formal verification of Finlay's proof built upon these reusable components.

---

## 6. Roadmap

Future development will continue extending the library through additional classical results in synthetic geometry.

The primary objective is no longer the formal verification of individual proofs, but the systematic construction of reusable mathematical theories whose components naturally support subsequent developments.

---

## 7. Library Evolution

The development of the library follows four successive stages:

1. Formal verification of a classical synthetic proof.
2. Encapsulation of recurring synthetic arguments.
3. Construction of reusable mathematical theories.
4. Gradual expansion into a general-purpose synthetic geometry library.

This evolution is documented in the accompanying development logs.
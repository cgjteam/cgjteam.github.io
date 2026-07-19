---
layout: default
---

# Geometry Library Index

**Version:** 1.5  
**Status:** First Stable Incidence Architecture

---

## Repository

- **Geometry implementation:** [View Geometry.lean](./Geometry_lean.html)

---

## 1. Library Architecture

The Geometry Library is developed through the formal verification of classical synthetic geometry.

Rather than designing a complete axiomatic system in advance, the library evolves by extracting reusable mathematical structures from formally verified proofs.

The current architecture consists of the following layers.

| Layer | Purpose |
|:------|:--------|
| **GeometryCore** | Primitive geometric objects. |
| **HilbertAxioms** | Point-line incidence and incidence-based collinearity. |
| **GeometryBase** | Fundamental geometric definitions and reusable synthetic theorems. |
| **Synthetic Geometry** | Midsegment, parallelograms and related constructions. |
| **Formal Proofs** | Complete formalized geometric proofs. |

The current architecture is

```
GeometryCore
        ↓
HilbertAxioms
        ↓
GeometryBase
        ↓
MidsegmentParallel
        ↓
FinlayProof
```

---

## 2. Development Philosophy

The Geometry Library is **not** developed by implementing a complete axiomatic geometry from the beginning.

Instead, reusable mathematical structures emerge from the formal analysis of concrete synthetic proofs.

The formalization process separates

- mathematical intuition,
- primitive logical assumptions,
- derived geometric concepts,
- reusable proof techniques.

As the library evolves, primitive notions are replaced by derived definitions whenever possible, reducing the logical kernel while preserving the public API.

---

## 3. Design Principles

The development follows several guiding principles.

1. Keep primitive assumptions as small as possible.
2. Replace primitive notions by mathematical definitions whenever possible.
3. Replace elementary axioms by formally verified Lean theorems.
4. Separate reusable geometric arguments from individual proofs.
5. Preserve the mathematical structure of classical synthetic geometry.
6. Maintain compatibility of higher-level modules during architectural refactoring.

---

## 4. Current Library Structure

| Layer | Representative components |
|:------|:--------------------------|
| **GeometryCore** | `Geo`, `Point`, `Line` |
| **HilbertAxioms** | `HilbertIncidence`, `OnLine`, `PrimCollinear`, `PrimCollinearRotate`, `PrimCollinearSymm` |
| **GeometryBase** | `Collinear`, `Parallel`, `Congruent`, `AngleCongruent`, `IsMidpoint`, `IsMedian`, `IsParallelogram` |
| **Synthetic Geometry** | `MidsegmentTheorem`, `ParallelCollinearLeft`, `ParallelogramDiagonals`, `SAS` |
| **Synthetic Proof Steps** | `FinlayStep1`, `FinlayStep2`, `FinlayStep3`, `FinlayStep4`, `FinlayStep5` |
| **Formal Proofs** | `Finlay` |

---

## 5. First Architectural Refactoring

One of the major milestones of the project was the introduction of the **Hilbert Incidence Layer**.

Previously,

```
Collinear
```

was a primitive relation of the geometry.

The new architecture introduces

```
OnLine
```

as the primitive relation and defines

```
PrimCollinear(A,B,C)
    :=
∃ l,
OnLine(A,l) ∧
OnLine(B,l) ∧
OnLine(C,l)
```

As a consequence,

- collinearity becomes a derived notion,
- elementary properties such as symmetry and rotation become ordinary Lean theorems,
- the logical kernel of the library is reduced,
- higher-level modules remain unchanged.

---

## 6. First Formal Result

The first complete formal proof verifies Ian Finlay's synthetic construction for the concurrency of triangle medians.

The proof is decomposed into five reusable steps.

1. Midsegment theorem establishes the required parallel lines.
2. Parallelism identifies a parallelogram.
3. The intersection point is transferred to the diagonal.
4. The diagonals determine the midpoint.
5. The midpoint establishes the third median.

The final theorem proves that the three medians of a triangle are concurrent.

---

## 7. Current Status

The current version contains

- a minimal geometry kernel,
- an incidence layer based on Hilbert's ideas,
- reusable synthetic geometry,
- modular proof components,
- a complete formalization of Finlay's proof.

The introduction of the incidence layer establishes the first stable architectural foundation of the library.

---

## 8. Future Development

Future work will continue reducing the logical kernel of the library by introducing additional axiomatic layers.

Planned directions include

- order and betweenness,
- congruence,
- transformations,
- additional synthetic constructions,
- multiple formal proofs of the same theorem.

The long-term objective is a reusable Lean library for classical synthetic geometry.

---

## 9. Library Evolution

The Geometry Library evolves according to the following methodology.

1. Formal verification of a classical proof.
2. Extraction of reusable mathematical components.
3. Separation of primitive and derived notions.
4. Architectural refactoring of the logical kernel.
5. Development of reusable synthetic theories.

Each completed stage is documented in the project wiki and development logs.

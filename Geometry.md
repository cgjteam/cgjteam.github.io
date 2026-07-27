---
layout: default
---

# Geometry Library Index

**Version:** 2.0
**Status:** Multiple Axiomatic Routes

---

## Repository

- **Geometry implementation:** [View repository](https://github.com/cgjteam/CGJteamLab)

---

## 1. Library Architecture

The Geometry Library studies classical synthetic geometry through formal
verification in Lean 4.

The current architecture no longer consists of a single foundational
route. The same higher-level geometric argument is developed over
different axiomatic foundations.

The three principal routes are:

```text
Hilbert
Suppes
Tarski
```

Each route provides its own foundational language and reduction path
toward reusable synthetic geometry.

The project therefore separates two levels:

```text
axiomatic foundations
        |
        v
synthetic geometric structures
        |
        v
formal proofs
```

Finlay's proof of the concurrency of triangle medians is the principal
test case through which these routes are compared.

---

## 2. Development Philosophy

The Geometry Library is not designed by fixing one complete axiomatic
system in advance.

Instead, its architecture emerges from the formal analysis of classical
proofs.

The development process distinguishes:

- primitive geometric relations,
- axiomatic laws governing those relations,
- derived geometric notions,
- reusable synthetic theorems,
- complete formal proofs.

A central objective is to determine how much geometric structure is
actually required by a proof and which parts of a convenient synthetic
API can be derived from weaker foundations.

This has led naturally to several independent foundational routes rather
than a single universal geometry kernel.

---

## 3. The Three Foundational Routes

### Hilbert Route

The Hilbert route uses a point-line language together with incidence,
order, congruence, and the Euclidean parallel principle.

Its current foundational hierarchy is:

```text
HilbertCore
    |
    v
HilbertAxioms
    |
    v
HilbertInterface
    |
    v
MidsegmentParallel
    |
    v
FinlayProof
```

The Hilbert axioms themselves form a hierarchy:

```text
HilbertIncidence
        |
        v
HilbertPlaneIncidence       Group I
        |
        v
HilbertOrder                Group II
        |
        v
HilbertCongruence           Group III
        |
        v
Neutral Geometry
        |
        v
HilbertEuclideanPlane       Group IV
        |
        v
Euclidean Geometry
        |
        v
HilbertArchimedeanPlane     Group V
```

This route distinguishes sharply between neutral and specifically
Euclidean geometry.

---

### Suppes Route

The Suppes route uses a different primitive language based on
betweenness and equidistance.

Its synthetic notions are reconstructed through the Suppes interface,
including midpoint constructions, parallelism, and parallelogram
recognition.

The route leads independently to a Suppes version of the Midsegment
Theorem and Finlay's proof.

Schematically:

```text
SuppesCore
    |
    v
SuppesInterface
    |
    v
MidsegmentParallelSuppes
    |
    v
FinlayProofSuppes
```

The Suppes development demonstrates that the synthetic structure used
by Finlay's argument can be reconstructed from a foundation very
different from the Hilbert point-line system.

---

### Tarski Route

The Tarski route provides a third foundation based on primitive
betweenness and congruence.

An explicit bridge connects the Tarski foundation with the synthetic
language required by the higher-level proof.

Schematically:

```text
Tarski foundation
        |
        v
synthetic interface
        |
        v
Midsegment Theorem
        |
        v
Finlay proof
```

The Tarski route provides an independent comparison with both Hilbert
and Suppes geometry.

---

## 4. The Hilbert Core

`HilbertCore.lean` defines the primitive language and the
representations used by the Hilbert route.

The primitive objects are:

```lean
Point
Line
```

and the primitive relations include:

```lean
OnLine
Between
SegmentCongruent
UnorientedAngleCongruent
```

Several important notions are already derived at this level.

These include:

```text
Segment
Congruent
ray
Angle
AngleCongruent
LineCollinear
PointLine
Parallel
```

Thus parallelism is not primitive in the Hilbert route.

It is defined through nondegenerate point-defined lines and their
disjointness.

Similarly, many symmetry and reversal laws follow from the
representation of segments, angles, and lines rather than from
additional geometric axioms.

---

## 5. The Hilbert Axiom Hierarchy

`HilbertAxioms.lean` imposes geometric laws on the primitive language.

The principal classes correspond to the Hilbert groups:

| Layer | Role |
|:------|:-----|
| `HilbertPlaneIncidence` | Plane incidence axioms |
| `HilbertOrder` | Betweenness and Pasch |
| `HilbertCongruence` | Segment and angle congruence, SAS |
| `HilbertEuclideanPlane` | Euclidean parallel axiom |
| `HilbertArchimedeanPlane` | Archimedean extension |

The file also develops a substantial derived theory between these
axiomatic levels.

In particular, the neutral geometry generated by Groups I-III already
contains results such as:

```text
SAS consequences
strong Pasch theorems
midpoint existence
equal alternate angles -> parallel
```

The Euclidean parallel axiom is required for the converse direction:

```text
parallel -> equal alternate angles
```

and for the stronger Euclidean theory of parallelograms used later in
Finlay's proof.

---

## 6. The Hilbert Interface

`HilbertInterface.lean` is the reduction boundary between the Hilbert
foundation and the reusable synthetic API.

It exposes notions such as:

```text
Collinear
IsMidpoint
IsMedian
IsIntersection
IsParallelogram
```

and synthetic operations such as:

```text
SAS
parallel_from_equal_angles
ParallelCollinearLeft
MidpointMedian
ParallelogramDiagonals
```

The current interface is not an additional axiomatic layer.

Earlier provisional interface axioms have been replaced systematically
by theorems derived from the Hilbert foundation.

Its architecture is:

```text
Hilbert foundation
        |
        | formal derivation
        v
HilbertInterface
        |
        | mathematical packaging
        v
synthetic geometry
```

This preserves a readable classical proof language while keeping the
actual foundational dependencies explicit.

---

## 7. Midsegment Geometry

The Midsegment Theorem is a central reusable component of the library.

On the Hilbert route its proof has the conceptual structure:

```text
Auxiliary Construction
        |
        v
SAS
        |
        v
Equal Angles
        |
        v
Parallelogram Recognition
        |
        v
Adjacent Parallel
        |
        v
Transfer Along Collinear
```

The theorem is important both mathematically and architecturally.

It isolates a reusable construction that originally appeared inside
Finlay's proof and makes it available independently.

The existence of corresponding Hilbert, Suppes, and Tarski routes also
makes the Midsegment Theorem a natural comparison point between the
different foundations.

---

## 8. Parallelogram Theory

Parallelograms form another reusable layer extracted from the Finlay
formalization.

On the Hilbert route:

```lean
IsParallelogram A B C D
```

is defined by two pairs of opposite sides being parallel.

Thus parallelogram recognition from these two parallelisms is
essentially definitional.

The stronger classical theory is derived separately and includes
results concerning:

```text
opposite-side congruence
diagonal intersection
diagonal crossing
diagonal bisection
```

In the current Hilbert development these stronger results belong to the
Euclidean layer.

This distinction separates:

```text
definition of parallelogram
```

from:

```text
Euclidean theory of parallelograms.
```

---

## 9. Finlay's Proof

The Hilbert route reconstructs the complete Finlay configuration from
the single assumption that `ABC` is a noncollinear triangle.

The auxiliary points are produced internally:

```text
E and F  by midpoint existence
G        by strong inner Pasch
P        by segment extension
D        by the parallelogram diagonal-intersection theorem
```

After the configuration has been constructed, the proof follows the
classical five-step structure:

```text
Step 1
two applications of the Midsegment Theorem
        |
        v
CG || BP and BG || CP

Step 2
two pairs of opposite sides parallel
        |
        v
BPCG is a parallelogram

Step 3
diagonals of BPCG intersect
        |
        v
D lies on BC and AP

Step 4
diagonals of a parallelogram bisect each other
        |
        v
D is the midpoint of BC
        |
        v
AD is the third median

Step 5
collinearity transfer
        |
        v
G lies on AD
```

Therefore all three medians pass through `G`.

---

## 10. Logical Profile of the Hilbert Proof

The Hilbert proof does not use the full strength of the Hilbert
hierarchy uniformly.

A substantial part of the construction belongs to neutral geometry:

```text
midpoint existence
Pasch construction of G
segment extension
SAS
equal angles -> parallel
parallel transport along collinear points
```

The specifically Euclidean strength is concentrated in the stronger
parallelogram theory, especially:

```text
diagonal intersection
diagonal bisection
```

This gives the Hilbert route the logical profile:

```text
neutral Hilbert geometry
        |
        v
construction and midsegment geometry
        |
        v
parallelogram configuration
        |
        v
Euclidean parallelogram theory
        |
        v
median concurrency
```

---

## 11. Comparative Architecture

The current project no longer treats the geometry library as a single
linear dependency chain.

Its broader architecture is comparative:

```text
                 Classical Synthetic Geometry
                            |
          +-----------------+-----------------+
          |                 |                 |
       Hilbert            Suppes            Tarski
          |                 |                 |
          v                 v                 v
      interfaces        interfaces        interfaces
          |                 |                 |
          +-----------------+-----------------+
                            |
                            v
                reusable geometric patterns
                            |
                  +---------+---------+
                  |                   |
             Midsegment          Parallelograms
                  |                   |
                  +---------+---------+
                            |
                            v
                       Finlay proof
```

The three routes need not implement identical internal theories.

Their comparison is useful precisely because they expose different
foundational mechanisms behind similar synthetic arguments.

---

## 12. Research Method

The library is developed through repeated reconstruction of the logical
dependencies of formal proofs.

The general method is:

1. formalize a classical synthetic argument,
2. identify the mathematical operations actually used,
3. separate primitive assumptions from derived results,
4. extract reusable geometric theories,
5. reduce provisional interface assumptions where possible,
6. compare the resulting structure across different foundations.

The architecture is therefore an outcome of proof analysis rather than
a fixed design imposed in advance.

---

## 13. Current Status

The project currently contains:

- a reconstructed Hilbert foundational hierarchy,
- a Hilbert synthetic interface reduced to proved foundational results,
- an independent Suppes route,
- an independent Tarski route,
- reusable Midsegment geometry,
- reusable parallelogram theory,
- complete formalizations of Finlay's median-concurrency argument,
- research logs documenting the evolution and logical structure of the
  library.

The current stage of the project is therefore no longer accurately
described as a "first stable incidence architecture."

The library has developed into a comparative formal study of synthetic
geometry over multiple axiomatic foundations.

---

## 14. Library Evolution

The development of the Geometry Library can be summarized as:

```text
single formal proof
        |
        v
reusable proof steps
        |
        v
synthetic geometric theories
        |
        v
reduction of primitive assumptions
        |
        v
explicit axiomatic foundations
        |
        v
multiple foundational routes
        |
        v
comparative architecture
```

Finlay's proof remains the principal organizing example, but the
mathematical object of study has expanded.

The project now investigates how the same synthetic geometric reasoning
is represented, derived, and reused across different formal
foundations.

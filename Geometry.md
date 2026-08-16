---
layout: default
title: Geometry Library Index
---

# Geometry Library Index

**Version:** 4.0\
**Status:** Foundational Routes, Book Zero, and Book I Reconstruction

------------------------------------------------------------------------

## Repository

-   **Geometry implementation:** [View
    repository](https://github.com/cgjteam/CGJteamLab)

------------------------------------------------------------------------

## 1. Library Architecture

The Geometry Library studies classical synthetic geometry through formal
verification in Lean 4.

The project began with three foundational routes:

``` text
Hilbert
Suppes
Tarski
```

These routes are architecturally independent and do not share a common
foundational geometry core. Each begins from a different primitive
language and develops enough geometry to support higher-level synthetic
arguments.

The project now has a second axis of development. Above the Hilbert
route, a reconstructed elementary working layer -- **Book Zero** -- is
being tested against a growing reconstruction of Euclid's Book I.

The current architecture is therefore better represented as:

``` text
                         Hilbert
                            |
                            v
                    HilbertInterface
                     /            \
                    /              \
             Finlay route        Book Zero
                                     |
                                     v
                              Euclid Book I
                                     |
                                     v
                         proof-language analysis


Suppes  -------------------------> Finlay route

Tarski  -------------------------> Finlay route
```

Finlay's proof remains the principal comparison theorem for studying how
one synthetic argument changes across different foundations.

Book I has a different role. It provides a larger classical proof corpus
for testing whether the Hilbert interface and Book Zero form a practical
language for synthetic geometry, and for comparing classical proof
architecture with the architecture of the formal reconstruction.

The project therefore now studies three related questions:

``` text
How can a classical synthetic proof be formalized?

How does the proof change when reconstructed over different foundations?

Which intermediate language makes a larger corpus of synthetic geometry
reusable, readable, and structurally transparent?
```

------------------------------------------------------------------------

## 2. Development Philosophy

The library architecture was not fixed in advance.

It emerged from the formalization and subsequent reverse engineering of
classical proofs.

The development process distinguishes:

-   primitive objects, operations, and relations,
-   genuine axioms,
-   definitions,
-   formally derived geometric theory,
-   interface theorems,
-   explicit deferred results that have not yet been reduced,
-   high-level synthetic proofs.

A central principle is that compilation alone does not determine the
foundational status of a theorem.

For every route, the project therefore asks:

``` text
Which declarations are primitive?
Which are derived?
Which remain explicit assumptions?
What is the actual dependency path of the final proof?
```

------------------------------------------------------------------------

# Part I. Hilbert Route

## 3. Hilbert Architecture

The active Hilbert route is:

``` text
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

This is currently the most fully reconstructed route.

------------------------------------------------------------------------

## 4. HilbertCore

`HilbertCore.lean` defines the primitive language and
representation-level objects used by the Hilbert route.

The primitive objects include:

``` text
Point
Line
```

and the primitive geometric relations include:

``` text
OnLine
Between
SegmentCongruent
UnorientedAngleCongruent
```

The core also constructs higher-level objects and relations such as:

``` text
Segment
Congruent
ray
Angle
AngleCongruent
LineCollinear
PointLine
Parallel
```

Several symmetry and reversal laws are consequences of these
representations rather than additional Hilbert axioms.

In particular, `Parallel` is derived from point-defined lines and
disjointness; it is not primitive.

------------------------------------------------------------------------

## 5. Hilbert Axiom Hierarchy

`HilbertAxioms.lean` introduces the actual Hilbert-style axiomatic
hierarchy:

``` text
HilbertIncidence
        |
        v
HilbertPlaneIncidence
        |
        v
HilbertOrder
        |
        v
HilbertCongruence
        |
        v
HilbertEuclideanPlane
        |
        v
HilbertArchimedeanPlane
```

These levels correspond broadly to the Hilbert groups:

  Layer                       Mathematical role
  --------------------------- -----------------------------------
  `HilbertPlaneIncidence`     incidence axioms
  `HilbertOrder`              betweenness and Pasch
  `HilbertCongruence`         segment and angle congruence, SAS
  `HilbertEuclideanPlane`     Euclidean parallel axiom
  `HilbertArchimedeanPlane`   Archimedean extension

A substantial neutral theory is already derived below the Euclidean
parallel axiom.

This includes results such as:

``` text
strong Pasch theorems
triangle congruence consequences
midpoint existence
equal alternate angles -> parallel
```

The converse direction

``` text
parallel -> equal alternate angles
```

is exposed at the Euclidean level.

------------------------------------------------------------------------

## 6. HilbertInterface

`HilbertInterface.lean` is the reduction and packaging boundary between
the Hilbert foundation and the higher-level synthetic language.

It exposes notions including:

``` text
Collinear
IsMidpoint
IsMedian
IsIntersection
IsParallelogram
```

and operations including:

``` text
SAS
parallel_from_equal_angles
ParallelCollinearLeft
MidpointMedian
ParallelogramDiagonals
```

The active interface is not intended as a second independent axiomatic
system.

Earlier provisional assumptions have been progressively replaced by
theorems whose dependencies terminate in the Hilbert foundation.

The interface is logically stratified:

``` text
representation-level results
        |
incidence-level results
        |
order-level results
        |
congruence-level results
        |
Euclidean-level results
```

------------------------------------------------------------------------

## 7. Hilbert Midsegment Route

The proof in `MidsegmentParallel.lean` has the structure:

``` text
auxiliary construction
        |
        v
SAS
        |
        v
equal angles
        |
        v
parallelism
        |
        v
parallelogram recognition
        |
        v
parallelogram property
        |
        v
parallel transfer along collinearity
```

The public Midsegment Theorem packages this longer internal argument
into a reusable high-level result.

This explains why angle and congruence theory may disappear from the
surface of later proofs even though they remain present in the
dependency tree.

------------------------------------------------------------------------

## 8. Hilbert Finlay Route

`FinlayProof.lean` constructs the auxiliary Finlay configuration
internally.

From a noncollinear triangle (ABC), the proof constructs:

``` text
E and F  by midpoint existence
G        through strong inner Pasch
P        through segment extension
D        through parallelogram diagonal machinery
```

The high-level argument then follows the classical route:

``` text
Midsegment Theorem
        |
        v
two pairs of parallel sides
        |
        v
BPCG parallelogram
        |
        v
diagonal midpoint
        |
        v
third median
        |
        v
concurrency.
```

In the current implementation, the strongest Hilbert-level dependencies
are concentrated in the parallelogram diagonal theory rather than
distributed uniformly throughout the proof.

------------------------------------------------------------------------

# Part II. Book Zero

## Book Zero as a Working Layer

`HilbertBookZero.lean` develops an elementary synthetic layer above the
Hilbert foundation and `HilbertInterface`.

Its purpose is not to introduce another axiomatic system.

Instead, Book Zero packages recurring low-level geometric arguments into
named results that can be used as ordinary operations in later proofs.

Schematically:

``` text
Hilbert axioms
      |
      v
HilbertInterface
      |
      v
HilbertBookZero
      |
      v
reusable synthetic operations
```

The reconstructed corpus includes results for collinearity, betweenness,
segment comparison, rays, segment transport, and related elementary
configurations.

The important test is not the number of Book Zero theorems in isolation.
The test is whether later proofs can remain at this level rather than
repeatedly descending to primitive incidence, order, and congruence
reasoning.

Early Book I propositions provide positive evidence for this
interpretation.

Examples include:

``` text
bookZero_45_partNotEqualWhole
bookZero_49_layoff
```

which absorb arguments that would otherwise require substantial local
betweenness or construction machinery.

Book Zero should therefore be read as an experimental **working
language** for classical synthetic geometry.

------------------------------------------------------------------------

# Part III. Euclid Book I Reconstruction

## Book I as a Test Corpus

The reconstruction of Euclid's Book I is developed over the Hilbert and
Book Zero layers.

Its role differs from the earlier Finlay experiment.

Finlay tests the effect of changing foundations:

``` text
Hilbert / Suppes / Tarski
          |
          v
same high-level theorem
```

Book I tests the effect of changing proof scale:

``` text
Hilbert foundation
       |
Hilbert interface
       |
Book Zero
       |
Euclidean propositions
```

The first reconstructed propositions already show several distinct forms
of compression.

A classical multi-stage construction may become a single reusable
operation. A theorem may become a wrapper around a previously
reconstructed congruence principle. In other cases a formal definition
already contains the witness that Euclid constructs explicitly.

This has led to an important distinction:

> Reconstruction of a Euclidean proposition is not automatically
> reconstruction of Euclid's historical proof of that proposition.

For example, the formal reconstruction of Proposition I.1 does not
reproduce the intersection of two circles. It obtains an equidistant
point from the Hilbert theory and proves separately that the point is
noncollinear with the base.

Likewise, propositions whose classical proofs use superposition,
reductio, or extended constructions may be reconstructed using already
established SAS, SSS, ASA, uniqueness, or segment-layoff results.

The theorem statement is preserved while the proof architecture may
change.

## Classical Proof and Formal Reconstruction

The Book I documentation therefore separates several questions:

``` text
What does Euclid prove?
How does Euclid prove it?

What does the Lean theorem state?
How does Lean prove it?

Which earlier formal theorem absorbs the classical construction?
```

This distinction prevents the documentation from presenting a short
formal proof as though it were a line-by-line encoding of the classical
argument.

It also turns Book I into a comparison of two organizations of synthetic
geometry:

``` text
Euclidean construction language
             |
             v
classical proposition

Hilbert + Book Zero language
             |
             v
same proposition
```

The differences between these routes are part of the mathematical
result.

## Diagrams as Proof Analysis

The proposition documentation also uses diagrams as analytical objects
rather than decoration.

The graphical audit of the first part of Book I established the
following working principle:

> A figure should represent a geometrically distinct configuration or
> clarify a logically significant step.

Successive snapshots that merely add one construction object are
normally removed.

The audit has also shown that classical diagrams can expose foundational
and logical issues. Examples include:

``` text
circle-intersection existence
line extension and intersection
side choices in superposition
positional cases not represented by a single figure
```

Geometric TikZ figures are therefore kept separate from ASCII diagrams
of formal proof architecture.

The three presentation layers have different roles:

``` text
TikZ figure       -> geometric configuration

ASCII diagram     -> proof or dependency structure

Lean excerpt      -> decisive formal interface step
```

Long Lean theorem bodies are not reproduced when the repository already
contains the complete source. Code excerpts are retained when they
explain a mathematically significant transition.

------------------------------------------------------------------------

# Part IV. Suppes Route

## 9. Active Suppes Architecture

The current active Suppes route is:

``` text
SuppesCore
    |
    v
SuppesAxioms
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

`SuppesCore.lean` defines the primitive objects shared by the Suppes
development.

`SuppesAxioms.lean` introduces the active axiomatic structure
`SuppesGeometry`, while the remaining files progressively build the
reusable affine interface, the Midsegment Theorem and Finlay's proof.

Following the architectural refactoring documented in Logs 032 and 033,
the Suppes route now has the same high-level organization as the Hilbert
route: core, axioms, interface and proof layers.

------------------------------------------------------------------------

## 10. SuppesAxioms

The active Suppes foundation is defined through

``` lean
SuppesGeometry
```

with primitive operations and relation:

``` text
Mid
Dbl
Col
```

schematically:

``` text
Point
 |
 +--> Mid
 |
 +--> Dbl
 |
 `--> Col.
```

The axiom families include declarations labelled:

``` text
L2
L3

B1
B2
B3
B4

D1
D2
D3

BD
LB
LL
```

The important structural feature is that midpoint and doubling are
primitive operations of the active Suppes language.

This differs fundamentally from the Tarski route, where midpoint is
defined from betweenness and congruence.

------------------------------------------------------------------------

## 11. SuppesInterface

`SuppesInterface.lean` develops the affine geometry used by the later
proofs.

It defines:

``` text
PrimTriangle
PrimParallelogram
SuppesParallel
```

and derives a substantial theory involving:

``` text
midpoint identities
collinearity transformations
primitive parallelograms
Suppes Theorem 11
parallel reversal
parallel symmetry
```

The primitive parallelogram is midpoint-based:

``` text
noncollinearity
      +
equality of diagonal midpoints
      |
      v
PrimParallelogram.
```

This differs from the Hilbert definition of a parallelogram through
opposite parallel sides.

### Remaining explicit assumptions

The current interface is not yet completely reduced to `SuppesAxioms`.

Explicit assumptions still include results such as:

``` text
suppes_parallel_transitivity
collinear_doubling_common_center
```

Thus `SuppesInterface` is best described as:

> a largely derived affine theory with a small amount of explicit
> remaining foundational debt.

------------------------------------------------------------------------

## 12. Suppes Midsegment Route

`MidsegmentParallelSuppes.lean` is especially compact.

The proof is:

``` text
PrimTriangle
     |
     v
Suppes Theorem 11
     |
     v
PrimParallelogram
     |
     v
parallelogram_parallel_second
     |
     v
MidsegmentTheoremSuppes.
```

The difficult midpoint algebra is already contained in the Suppes
theory.

Importantly, the additional assumptions needed later for parallelogram
recognition do not belong to this direct Midsegment path.

------------------------------------------------------------------------

## 13. Parallelogram Recognition inside the Midsegment Module

The Finlay proof needs the converse transition:

``` text
two pairs of opposite parallel sides
        |
        v
PrimParallelogram.
```

This is developed separately in

``` lean
MidsegmentParallelSuppes.lean
```

The theorem is mathematically general and is a natural candidate for
eventual integration into the Suppes interface.

At present its dependency tree still contains the explicit assumption

``` text
parallel_vertex_unique.
```

The recognition theorem is now integrated into the midsegment module
because it forms part of the same mathematical development rather than
an independent reusable theory.

------------------------------------------------------------------------

## 14. Suppes Finlay Route

`FinlayProofSuppes.lean` preserves the classical Finlay narrative at a
high level, but the route is not yet fully reduced to `SuppesAxioms`.

The main remaining transitions include:

``` text
parallel_extend_midsegment            [explicit assumption]

parallel_vertex_unique                [below recognition]

parallelogram_diagonals_bisect        [explicit assumption]
```

Schematically:

``` text
MidsegmentTheoremSuppes
        |
        v
parallel extension
        |
        v
two parallel pairs
        |
        v
parallelogram recognition
        |
        v
PrimParallelogram
        |
        v
diagonal bisection
        |
        v
third median.
```

The high-level proof is structurally complete, but several general
affine principles still remain to be reduced.

------------------------------------------------------------------------

# Part V. Tarski Route

## 15. Active Tarski Architecture

The current Tarski route is:

``` text
TarskiCore
    |
    v
TarskiAxioms
    |
    v
TarskiInterface
    |
    v
MidSegmentTarski
    |
    v
FinlayProofTarski
```

`TarskiCore.lean` defines the independent primitive geometric language
of the Tarski route inside the namespace

``` text
Geometry.Tarski
```

Its primitive structure is therefore distinct from the Hilbert structure

``` text
Geometry.Geo.
```

The Tarski route does not depend on `HilbertCore` or on the Hilbert
axiom classes.

------------------------------------------------------------------------

## 16. Tarski Axiom Hierarchy

The active hierarchy is:

``` text
TarskiNeutral
      |
      v
TarskiPlane
      |
      v
TarskiEuclideanPlane.
```

`TarskiNeutral` contains the neutral axioms corresponding to:

``` text
congruence reversal
congruence transitivity
congruence identity
segment construction
five-segment axiom
betweenness identity
inner Pasch.
```

`TarskiPlane` adds the two-dimensional assumptions.

`TarskiEuclideanPlane` adds the Euclidean axiom.

Continuity is not currently included.

------------------------------------------------------------------------

## 17. TarskiInterface

`TarskiInterface.lean` reconstructs higher geometric notions from the
point-based Tarski language.

Important definitions include:

``` text
TarskiCollinear
TarskiIsMidpoint
TarskiParallelogram
TarskiParallelStrict.
```

The dependencies begin schematically as:

``` text
Between + Congruent
        |
        +--> TarskiCollinear
        |
        +--> TarskiIsMidpoint
        |
        +--> TarskiParallelogram
        |
        `--> TarskiParallelStrict.
```

A substantial order theory has already been derived formally above
`TarskiNeutral`.

### Remaining reconstruction obligations

The Tarski interface has been systematically audited against the actual
dependency path of `FinlayProofTarski`.

Unused declarations and temporary infrastructure have been removed,
while several previously deferred results have been reconstructed from
the underlying Tarski theory.

The remaining assumptions are therefore treated individually rather than
as a general collection of interface axioms.

In particular, the current reduction work distinguishes between:

``` text
results derivable in neutral Tarski geometry
        |
        v
results requiring additional parallelism theory.
```

This makes the logical status of the remaining dependencies explicit and
turns each surviving assumption into a separate reconstruction problem.

------------------------------------------------------------------------

## 18. Tarski Midsegment Route

`MidSegmentTarski.lean` contains a genuinely Tarski-specific proof.

For

$$
P=\operatorname{Mid}(B,C),
\qquad
Q=\operatorname{Mid}(A,C),
$$

the proof constructs (X) such that

$$
Q=\operatorname{Mid}(P,X).
$$

The route is:

``` text
midpoints
   |
central symmetry
   |
congruence + strict parallelism
   |
parallelogram cases
   |
eliminate the wrong orientation
   |
opposite sides parallel
   |
collinear transfer
   |
Midsegment Theorem.
```

This is structurally different from both the Hilbert and Suppes proofs.

The theorem is exposed under `TarskiNeutral`, although some results in
its current dependency tree remain deferred in `TarskiInterface`.

------------------------------------------------------------------------

## 19. Tarski Finlay Route

`FinlayProofTarski.lean` imports

``` lean
MidSegmentTarski
```

directly.

The current route therefore no longer uses the older mixed module

``` lean
MidsegmentParallelTarski.lean,
```

which translated Tarski input into Hilbert-oriented machinery.

The Tarski Finlay proof uses:

``` text
Tarski Midsegment relations
        |
        v
strict parallel pairs
        |
        v
TarskiParallelogram
        |
        v
common diagonal midpoint
        |
        v
third median.
```

A distinctive feature is the definition of `TarskiParallelogram` through
a common midpoint of the diagonals.

Consequently, the classical steps

``` text
diagonal intersection
diagonal bisection
```

are largely absorbed into the parallelogram representation itself.

The principal remaining deferred dependency visible at the Finlay level
is the recognition theorem

``` text
tarski_parallelogram_of_two_parallel_pairs.
```

Recent dependency reduction has isolated this theorem from the remaining
neutral Tarski reconstruction.

Unlike the midpoint and order results eliminated during the audit, this
statement belongs to the theory of parallelism and requires separate
analysis of its Euclidean status.

------------------------------------------------------------------------

# Part VI. Comparative Geometry

## 20. Three Midsegment Proofs

The project now contains three structurally different routes to the same
classical Midsegment configuration.

### Hilbert

``` text
construction
 -> SAS
 -> equal angles
 -> parallelogram reasoning
 -> parallel transfer.
```

### Suppes

``` text
Theorem 11
 -> primitive parallelogram
 -> derived parallelism.
```

### Tarski

``` text
symmetric point
 -> congruence + strict parallelism
 -> parallelogram cases
 -> orientation elimination
 -> collinear transfer.
```

The theorem statement is classical, but the proof architecture changes
with the foundational language.

------------------------------------------------------------------------

## 21. Three Parallelogram Representations

The routes also organize parallelograms differently.

### Hilbert

``` text
two pairs of opposite sides parallel
        |
        v
IsParallelogram.
```

### Suppes

``` text
nondegeneracy
        +
equality of diagonal midpoints
        |
        v
PrimParallelogram.
```

### Tarski

``` text
existence of a common diagonal midpoint
        |
        v
TarskiParallelogram.
```

This difference has direct consequences for Finlay's proof.

In the Hilbert route, diagonal bisection is an additional theorem.

In the midpoint-based Suppes and Tarski representations, diagonal
midpoint information lies much closer to the definition itself.

------------------------------------------------------------------------

## 22. Three Finlay Routes

The current comparison can be summarized as:

``` text
Hilbert

construct full configuration
 -> Midsegment
 -> parallel-side parallelogram
 -> diagonal theorems
 -> third median.
```

``` text
Suppes

given higher-level configuration
 -> Suppes Midsegment
 -> parallel extension
 -> parallelogram recognition
 -> diagonal bisection
 -> third median.
```

``` text
Tarski

Tarski Midsegment
 -> strict parallel pairs
 -> midpoint-defined parallelogram
 -> extract diagonal midpoint
 -> collinearity
 -> third median.
```

The three developments do not yet have identical constructive strength.

This is part of the current research problem rather than an
inconsistency to be hidden.

------------------------------------------------------------------------

## 23. Foundational Debt

The current project distinguishes between a compiling theorem and a
fully reduced theorem.

### Hilbert

The active interface has been largely reduced to proved Hilbert results.

### Suppes

Several general affine principles remain explicit assumptions.

### Tarski

The active Tarski route has undergone a dependency-driven reduction.

Unused interface declarations have been removed and derivable
assumptions have been replaced by formal theorems where their
reconstruction has been completed.

The principal unresolved issue is now concentrated in the parallelism
layer, in particular in the recognition of a midpoint-defined
parallelogram from two pairs of opposite strict parallels.

The current objective is therefore not simply to minimize the number of
`axiom` declarations.

It is to identify the mathematical status of each remaining assumption,
separate neutral from Euclidean dependencies, and determine the weakest
foundation from which each result can be derived.

------------------------------------------------------------------------

# Part VII. Research Method and Current Status

## 24. Research Method

The general methodology is:

1.  formalize or reconstruct a classical proof,
2.  inspect its actual dependency graph,
3.  distinguish definitions, axioms, derived results, and deferred
    results,
4.  move general mathematics out of proof-specific files,
5.  preserve short high-level synthetic proofs,
6.  reduce remaining assumptions independently,
7.  compare the resulting proof architectures across foundations,
8.  distinguish reconstruction of a theorem from reconstruction of its
    historical proof,
9.  use diagrams to audit geometric configurations, hidden existence
    assumptions, and positional cases,
10. test intermediate theorem layers by using them in a larger proof
    corpus.

This process has already changed the structure of the library several
times.

The current file organization should therefore be read as the present
state of an active research program rather than as a final architecture.

------------------------------------------------------------------------

## 25. Current Status

The library currently contains:

-   a reconstructed Hilbert route,
-   an active Suppes route based on `Mid`, `Dbl`, and `Col`,
-   an active Tarski route based on `Between` and `Congruent`,
-   three distinct Midsegment developments,
-   three high-level Finlay developments,
-   a substantial Book Zero layer above the Hilbert foundation,
-   an active reconstruction of Euclid's Book I using that layer,
-   explicit maps of remaining foundational obligations,
-   a reduced Tarski dependency structure with remaining assumptions
    isolated as individual reconstruction problems,
-   reusable theories of midpoint, parallelism, parallelograms, order,
    congruence, rays, and elementary constructions,
-   proposition documentation comparing classical proofs, formal
    reconstructions, and geometric diagrams,
-   research logs documenting both foundational reconstruction and the
    emerging proof-language analysis.

The project has therefore evolved in two directions at once: from one
classical proof to a comparative study of axiomatic foundations, and
from foundational reconstruction to the study of a reusable formal
language for a larger corpus of synthetic geometry.

------------------------------------------------------------------------

## 26. Library Evolution

The development can be summarized as:

``` text
single classical proof
        |
        v
formal verification
        |
        v
reverse engineering
        |
        v
reusable synthetic theory
        |
        +-----------------------------+
        |                             |
        v                             v
foundational reconstruction      Book Zero
        |                             |
        v                             v
Hilbert / Suppes / Tarski        Euclid Book I
        |                             |
        v                             v
comparative foundations          proof-language analysis
        |                             |
        +--------------+--------------+
                       |
                       v
          architecture of synthetic geometry
```

Finlay remains the organizing comparison case for the three foundational
routes.

Book I is now the organizing test corpus for the Hilbert/Book Zero
working language.

The deeper object of study is therefore the relation between
foundational language, derived geometric structure, reusable synthetic
operations, and the shape of both classical and formal proofs.

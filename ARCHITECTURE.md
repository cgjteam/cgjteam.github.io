# CGJteam Lab — Architecture Specification

Version: 1.0

---

# 1. Project Philosophy

The CGJteam Lab project follows a documentation-driven methodology.

Every mathematical development progresses through three complementary layers:

1. **Research Logs**
   - explain mathematical ideas,
   - analyze proofs,
   - document methodological decisions.

2. **Geometry Library Index (`Geometry.md`)**
   - specifies the formal architecture,
   - records identifiers,
   - documents dependencies,
   - tracks implementation status.

3. **Geometry Implementation (`Geometry.lean`)**
   - contains the executable Lean formalization.

Implementation follows documentation, not the reverse.

---

# 2. Library Architecture

The geometry library is organized into four hierarchical layers.

Definitions
↓

Axioms
↓

Derived Lemmas
↓

Main Theorems

Every dependency points toward lower-level mathematical objects.

The architecture reflects mathematical structure rather than implementation history.

---

# 3. Naming Convention

## Definitions

Lean declarations use PascalCase.

Examples

IsPoint

IsLine

IsTriangle

IsCollinear

IsParallel

IsMidpoint

---

## Axioms

PascalCase.

Examples

SAS

ExtendSegment

ParallelPostulate

---

## Lemmas

snake_case.

Examples

midpoint_congruent

parallel_from_equal_angles

congruent_transitivity

---

## Theorems

PascalCase using standard mathematical names.

Examples

MedianConcurrency

CevaTheorem

MenelausTheorem

PappusTheorem

DesarguesTheorem

---

# 4. Stable Identifiers

Every formal object receives a permanent identifier.

Definitions

DEF-001

DEF-002

...

Axioms

AXM-001

AXM-002

...

Lemmas

LEM-001

LEM-002

...

Theorems

THM-001

THM-002

...

Identifiers never change.

---

# 5. Object Lifecycle

Each mathematical object evolves independently.

Planned

↓

Specified

↓

Implemented

↓

Verified

↓

Stable

The lifecycle describes documentation maturity rather than mathematical importance.

---

# 6. Standard Object Template

Every formal object documented in Geometry.md follows exactly the same structure.

ID

Lean declaration

Kind

Description

Depends on

Directly used by

Primary research logs

Origin

Implementation status

Verification status

Documentation status

Remarks

No exceptions.

---

# 7. Documentation Responsibilities

Research Logs answer

Why?

Geometry.md answers

What?

Geometry.lean answers

How?

Each layer has a different audience and purpose.

---

# 8. Dependency Policy

Dependencies always point from higher-level mathematical objects toward their prerequisites.

Definition
↓

Axiom
↓

Lemma
↓

Theorem

Circular dependencies are not permitted.

---

# 9. Repository Organization

Research Logs

↓

Geometry.md

↓

Geometry.lean

The documentation defines the architecture.

The implementation realizes it.

---

# 10. Long-Term Objective

The objective of CGJteam Lab is not merely to verify isolated geometric theorems.

The long-term goal is to develop a reusable, well-documented synthetic geometry library whose mathematical architecture, documentation, and Lean implementation evolve together while remaining permanently synchronized.

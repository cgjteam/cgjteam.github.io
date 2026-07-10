---
layout: default
---

# Geometry Library Index

**Version:** 6.0  
**Last updated:** 2026-07-10

## Repository

- **Geometry implementation:** [View Geometry.lean](./Geometry_lean.html)

---

## Quick Navigation

- [Library Architecture](#library-architecture)
- [Design Principles](#design-principles)
- [Formal Objects Registry](#formal-objects-registry)
- [Roadmap](#roadmap)

---

## Library Architecture

Geometry
├── Definitions
├── Core Axioms
├── Construction Axioms
├── Derived Lemmas
└── Main Theorems

---

## Library Statistics

> *Work in progress. Statistics will be updated after the API stabilizes.*

---

## Design Principles

1. The library is organized around geometric concepts rather than individual theorems.

2. Every theorem should expose its logical dependencies.

3. Axioms are introduced only when they represent genuine geometric principles.

4. Derived lemmas should be reusable by future formal developments.

5. Main proofs remain stable once verified.

---

## Formal Objects Registry

### DEF-001 — IsMidpoint

**Lean declaration:** `IsMidpoint`

**Category:** Definition

**Status:** Stable

**Description**
Defines a point as the midpoint of a line segment.

---

### AXM-001 — SAS

**Lean declaration:** `SAS`

**Category:** Core Axiom

**Status:** Stable

**Description**
Side–Angle–Side congruence axiom.

---

### AXM-003 — ParallelogramFromFinlayParallel

**Lean declaration:** `ParallelogramFromFinlayParallel`

**Category:** Construction Axiom

**Status:** Stable

**Description**
Construction of a parallelogram from two pairs of parallel lines.

---

### THM-002 — FinlayProof

**Lean declaration:** `FinlayProof`

**Category:** Main Theorem

**Status:** Frozen

**Description**
Formalization of Ian Finlay's synthetic proof of the concurrency of the medians.

---

## Roadmap

### Planned Theorems

- **THM-003** — TBD

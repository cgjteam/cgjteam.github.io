---
layout: default
---

# Geometry Library Index

**Version:** 1.1  
**Status:** Stable (Refactored to v1.1 Architecture)

## Repository

- **Geometry implementation:** [View Geometry.lean](./Geometry_lean.html)

---

## 1. Library Architecture

Geometry library is now structured into distinct hierarchical layers:
- **Basic Structures & Definitions:** Core geometric primitives.
- **Primitive Axioms:** Foundational rules (SAS, ExtendSegment, etc.).
- **Helper Lemmas:** Relational properties and infrastructure lemmas.
- **First Derived Theorem:** MidsegmentParallel (the foundation of synthetic proofs).
- **Specialized Corollaries:** Direct applications for main proofs.
- **Main Theorems:** Verified proofs (FinlayProof).

---

## 2. Design Principles

1. Library is organized around logical dependency layers.
2. Axiomatic surface area is minimized by converting API-level axioms to theorems.
3. Proofs are based on synthetic geometry (independent of coordinate systems).
4. Reusable components (Helper Lemmas) are separated from specialized geometry results.

---

## 3. Formal Objects Registry

### DEF-001 — IsMidpoint
Lean declaration: `IsMidpoint` | Category: Basic Definitions | Status: Stable

### AXM-001 — SAS
Lean declaration: `SAS` | Category: Primitive Axioms | Status: Stable

### THM-001 — MidsegmentParallel
Lean declaration: `MidsegmentParallel` | Category: First Derived Theorem | Status: Stable
*Remarks: The first theorem proved solely from geometry axioms.*

### THM-002 — FinlayProof
Lean declaration: `FinlayProof` | Category: Main Theorems | Status: Stable
*Remarks: Verified proof using derived theorems and corollaries.*

---

## 4. Roadmap

- **Phase 2:** Further reduction of axioms by converting infrastructure lemmas into formal theorems.
- **Phase 3:** Formalization of the `Triangle` structure for coordinate-free geometric reasoning.

---

## 5. Current Status

- Geometry API version 1.1 established.
- Synthetic proof pipeline operational.
- Library architecture stabilized and documented.

---

## 6. Library Statistics

*Architecture currently supports modular synthetic geometry proofs. Statistics tracking enabled.*

---
layout: default
---

# Geometry Library Index

**Version:** 1.0  
**Status:** Stable

## Repository

- **Geometry implementation:** [View Geometry.lean](./Geometry_lean.html)

---

## 1. Library Architecture

Geometry library is divided into: 
- Definitions
- Core Axioms
- Construction Axioms
- Derived Lemmas
- Main Theorems

---

## 2. Design Principles

1. Library is organized around geometric concepts, not individual theorems.
2. Every theorem exposes its logical dependencies.
3. Axioms represent genuine geometric principles.
4. Derived lemmas are reusable components.
5. Verified main proofs are stable reference implementations.

---

## 3. Formal Objects Registry

### DEF-001 — IsMidpoint
Lean declaration: `IsMidpoint` | Category: Definition | Status: Stable

### AXM-001 — SAS
Lean declaration: `SAS` | Category: Core Axiom | Status: Stable

### AXM-003 — ParallelogramFromFinlayParallel
Lean declaration: `ParallelogramFromFinlayParallel` | Category: Construction Axiom | Status: Stable

### THM-002 — FinlayProof
Lean declaration: `FinlayProof` | Category: Main Theorem | Status: Frozen
Remarks: First complete formal proof in the geometry library.

---

## 4. Roadmap

- THM-003 — TBD

---

## 5. Current Status

- Geometry API established.
- First synthetic proof formalized.
- Library architecture stabilized.

---

## 6. Library Statistics

*Work in progress. Statistics will be updated after the API stabilizes.*

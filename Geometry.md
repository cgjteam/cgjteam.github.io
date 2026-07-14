---
layout: default
---

# Geometry Library Index

**Version:** 1.1  
**Status:** Stable (Proof-Driven Architecture)

## Repository

- **Geometry implementation:** [View Geometry.lean](./Geometry_lean.html)

---

## 1. Library Architecture

The library is structured into hierarchical layers to ensure logical clarity:
- **Basic Structures & Definitions:** Core geometric primitives.
- **Primitive Axioms:** Foundational rules (SAS, ExtendSegment, etc.).
- **Helper Lemmas:** Infrastructure for relational properties.
- **First Derived Theorem:** MidsegmentParallel (the foundation of synthetic proofs).
- **Derived Corollaries:** Direct applications of theorems.
- **Main Theorems:** Verified formal proofs (e.g., FinlayProof).

---

## 2. Philosophy

- **Proof-driven methodology:** The architecture evolves alongside the formalization of classical synthetic geometry.
- **Justified abstractions:** New structures are introduced only when required by multiple independent proofs.
- **Emergent design:** The library avoids over-engineering in favor of incremental refinement.

---

## 3. Development Philosophy

The Geometry Library is developed incrementally. Rather than designing a complete axiom system upfront, new abstractions and helper lemmas emerge during the formalization of classical synthetic proofs. This approach allows the architecture to evolve naturally together with the underlying mathematics.

---

## 4. Design Principles

1. The library is organized around geometric concepts, not individual theorems.
2. Every theorem exposes its logical dependencies.
3. The primitive axiom set is intentionally kept small while reusable API components are promoted whenever possible.
4. The library distinguishes between primitive mathematical axioms and reusable API-level infrastructure.

---

## 5. Formal Objects Registry

| ID | Name | Category | Status | Dependencies |
| :--- | :--- | :--- | :--- | :--- |
| **THM-001** | MidsegmentParallel | First Derived Theorem | Stable | SAS, VerticalAngles, ExtendSegment |
| **THM-002** | FinlayProof | Main Theorems | Stable | MidsegmentParallel, Parallelogram axioms |

---

## 6. Roadmap

- **Phase 2:** Expansion of the synthetic geometry library through additional classical theorems.
- **Phase 3:** Evaluation of higher-level geometric abstractions (e.g., Triangle) when justified by future proofs.

---

## 7. Current Status

- Geometry API version 1.1 established.
- Synthetic proof pipeline operational.
- Proof-driven architecture stabilized.

---

## 8. Library Statistics

The library tracks:
- Primitive axioms
- Helper lemmas
- Derived theorems
- Dependency graph

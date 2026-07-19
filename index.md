---
layout: default
---

# CGJteam Lab

Welcome to the CGJteam research laboratory.

CGJteam Lab is an open research project exploring classical synthetic Euclidean geometry through formal verification in Lean 4.

The project combines three complementary goals:

- developing a reusable Lean geometry library,
- studying the logical architecture of synthetic geometry,
- documenting how reusable mathematical theories emerge from the formalization of classical proofs.

Rather than designing an axiomatic geometry library from first principles, the project develops its architecture by analysing formally verified proofs and extracting their reusable mathematical components.

The source code is publicly available on GitHub:

**https://github.com/cgjteam/CGJteamLab**

---

## Research Logs

* **[1. Finlay's Synthetic Proof](log-001.md)**
  - Formal verification of Ian Finlay's proof of the concurrency of triangle medians.

* **[2. The Midsegment Theorem and Parallelograms](log-002.md)**
  - Mathematical analysis of the Midsegment Theorem and the role of parallelograms.

* **[3. Encapsulating Synthetic Arguments](log-003.md)**
  - Extracting reusable geometric arguments from a single proof.

* **[4. Building the Mathematical Foundations](log-004.md)**
  - Transition from individual proof steps toward reusable mathematical structures.

* **[5. Beyond the Proof](log-005.md)**
  - Lessons learned after the first complete formalization.

* **[6. Reverse Engineering the Geometry Library](log-006.md)**
  - Analysis of an existing Lean geometry library and its mathematical architecture.

* **[7. Definitions Before Theorems](log-007.md)**
  - The role of definitions in revealing logical dependencies.

* **[8. What Finlay Did Not Need](log-008.md)**
  - Identifying geometric notions unnecessary for the proof.

* **[9. The Dependency Structure of a Formal Proof](log-009.md)**
  - Viewing formal proofs as dependency graphs.

* **[10. From Formal Proof to Geometry Atlas](log-010.md)**
  - From one theorem toward a systematic organization of geometric knowledge.

* **[11. Primitive Relations, Definitions and the Geometry Core](log-011.md)**
  - Reducing the logical kernel by replacing primitive notions with definitions.

* **[12. Eliminating the First Axiom](log-012.md)**
  - Replacing an axiom by a formal Lean proof without affecting higher-level developments.

* **[13. Refactoring the Incidence Layer](log-013.md)**
  - Introducing an incidence-based foundation inspired by Hilbert's axioms.

* **[14. From Finlay's Proof to Parallelograms](log-014.md)**
  - This log documents the extraction of the Theory of Parallelograms as an independent module of the Geometry Library, originating from the formal analysis of Finlay's synthetic proof.
    
---

## Geometry Library

The reusable Lean 4 geometry library developed within the project.

* **[Geometry Library Index](Geometry.md)**
  - Overview of the library architecture and its mathematical components.

* **[GitHub Repository](https://github.com/cgjteam/CGJteamLab)**
  - Lean source code and project development.

* **[Project Wiki](https://github.com/cgjteam/CGJteamLab/wiki)**
  - Documentation of the library architecture, design principles and development logs.
    
---

## Project Status

**Active research project.**

Current development focuses on two complementary directions:

- extending the reusable Geometry Library,
- refining its logical architecture by replacing primitive assumptions with formally justified definitions and reusable geometric theories.

The long-term objective is a modular Lean library in which the architecture emerges from the formal analysis of classical synthetic geometry rather than from a predetermined axiomatic design.

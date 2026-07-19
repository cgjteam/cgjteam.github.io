---
layout: default
---

# CGJteam Lab

Welcome to the CGJteam research laboratory.

CGJteam Lab is an open research project dedicated to the formal verification of synthetic Euclidean geometry in Lean 4.

The project combines the development of a reusable geometry library with detailed documentation of the formalization process through technical logs, architectural notes and mathematical case studies.

The source code is publicly available on GitHub:

**https://github.com/cgjteam/CGJteamLab**

---

## Research Logs

* **[1. Finlay's Synthetic Proof](log-001.md)**
  - This log documents the first complete formal verification of Ian Finlay's synthetic proof of the concurrency of triangle medians and the initial extraction of the proof structure.

* **[2. The Midsegment Theorem and Parallelograms](log-002.md)**
  - This log examines the mathematical foundations of Finlay's proof, focusing on the Midsegment Theorem and the role of parallelogram theory.

* **[3. Encapsulating Synthetic Arguments](log-003.md)**
  - This log describes how recurring synthetic arguments were extracted from a single proof and transformed into reusable mathematical components.

* **[4. Building the Mathematical Foundations](log-004.md)**
  - This log documents the transition from individual proof steps toward a structured collection of geometric theories and reusable interfaces.

* **[5. Beyond the Proof](log-005.md)**
  - This log summarizes the lessons learned after completing the Finlay formalization and the questions that emerged from studying the broader landscape of formal geometry.

* **[6. Reverse Engineering the Geometry Library](log-006.md)**
  - This log describes the analysis of the existing Lean geometry code and the attempt to understand its internal mathematical architecture.

* **[7. Definitions Before Theorems](log-007.md)**
  - This log examines the role of definitions in formal geometry and how formalization reveals the logical dependencies hidden behind classical geometric arguments.

* **[8. What Finlay Did Not Need](log-008.md)**
  - This log analyzes the concepts absent from the formal proof and shows which geometric structures were unnecessary for this particular synthetic argument.

* **[9. The Dependency Structure of a Formal Proof](log-009.md)**
  - This log presents the dependency perspective of the formalization, showing how definitions, lemmas and theorems form a structured mathematical network.

* **[10. From Formal Proof to Geometry Atlas](log-010.md)**
  - This log marks the transition from a single verified proof toward a broader program of organizing geometric concepts, structures and relationships into a Geometry Atlas.

* **[11. Primitive Relations, Definitions and the Geometry Core](log-011.md)**
  - This log documents the reduction of the logical kernel of the Geometry library by replacing several primitive predicates with definitions, revealing a layered architecture separating primitive relations, derived concepts and geometric theorems.

* **[12. Eliminating the First Axiom](log-012.md)**
  - This log describes the first successful elimination of an axiom from the geometry library, replacing it with a formal Lean proof without modifying any dependent developments.

* **[13. Refactoring the Incidence Layer](log-013.md)**
  - This log documents the transition from primitive collinearity to an incidence-based foundation inspired by Hilbert's axioms, showing how the logical kernel of the geometry library was simplified while preserving the complete Finlay formalization.
    
---

## Geometry Library

The reusable Lean 4 geometry library developed within the project.

* **[Geometry Library Index](Geometry.md)**
  - Architectural overview of definitions, axioms, lemmas and theorems.

* **GitHub Repository**
  - https://github.com/cgjteam/CGJteamLab

* **Project Wiki**
  - https://github.com/cgjteam/CGJteamLab/wiki

---

## Project Status

**Active research project.**

Current development focuses on expanding the reusable geometry library and systematically replacing temporary axioms with formally verified Lean theorems while preserving backward compatibility of the public API.

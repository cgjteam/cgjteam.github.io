---
layout: default
---

# CGJteam Lab — Archive

Welcome to the CGJteam research laboratory. This archive documents our systematic analysis of classical geometric proofs, focusing on logical dependencies and formal verification.

### Research Logs

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
  - This log documents the reduction of the logical kernel of the Geometry library by replacing several primitive predicates with definitions, revealing a layered architecture separating primitive relations, derived concepts, and geometric theorems.
 
 
---

### Formal Geometry Library

The library serves as the central architectural index of the project, documenting the formal development and dependency graph.

* **[Geometry Library Index](Geometry.md)**
  The architectural map detailing definitions, axioms, lemmas, and theorems.

* **[Geometry Implementation](Geometry_lean.html)**
  The formal source code in Lean, organized for modular verification.

---
*Status: Active research project.*

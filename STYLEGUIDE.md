# STYLEGUIDE.md

## CGJteam Lab — Style Guide and Architectural Standards

This document establishes the mandatory editorial and architectural standards for the CGJteam Lab project. All future research logs, documentation, and formal implementations must adhere to these conventions.

---

### 1. Architectural Layers
The project adheres to a strict three-layer architecture:
1. **Research Logs:** Narrative documentation, investigations, and methodological evolution.
2. **Geometry Library Index (`Geometry.md`):** The single, authoritative architectural hub mapping all identifiers, dependencies, and implementation status.
3. **Geometry Implementation (`Geometry.lean`):** The executable formal code in Lean.

---

### 2. Mathematical Notation
* Inline mathematics: `$...$`
* Display mathematics: `$$...$$`
* **Parentheses:** Avoid embedding formulas directly inside parentheses. Prefer natural formulations such as *namely $A=B$* instead of *($A=B$)*.
* **Jekyll Compatibility:** Wrap formulas in `{% raw %}` tags if parsing issues occur. Example:
{% raw %}
$DE = \frac{1}{2} AB$
{% endraw %}

---

### 3. Stable References
Research Logs must never reference Lean declarations by line numbers, source code locations, or declaration order. All references must pass through the **Geometry Library Index (`Geometry.md`)**, which serves as the permanent architectural registry.

---

### 4. Geometry Library Index
`Geometry.md` is the authoritative architectural document. Every formal object should record:
* Permanent identifier, Lean declaration, mathematical and Lean dependencies, implementation status, and related research logs.

---

### 5. Geometry.lean
Organized according to **mathematical dependencies**, not chronological development. The preferred hierarchy is:
1. Definitions
2. Axioms
3. Derived Lemmas
4. Main Theorems

---

### 6. Terminology
* **proof** — classical mathematical proof.
* **formal proof** — proof accepted by Lean.
* **Canonical names:** Research Logs, Geometry Library Index, Geometry implementation (`Geometry.lean`).

---

### 7. Lean Formalization Sections
The section should **not** enumerate every declaration. Instead, it must explain:
* How the current log contributes to the formalization, which architectural component it describes, and how it connects with the Index and implementation.

---

### 8. Long-Term Evolution
The project is divided into three methodological phases:
* **Phase I (Logs 001–007):** Logical reconstruction of Finlay's proof.
* **Phase II (Logs 008–014):** Methodology of formal verification.
* **Phase III (Logs 015–020):** Architecture of the formal geometry library.
Future work must extend the library while preserving these established principles.

---

### 9. General Principle
The implementation may evolve. The documentation should remain stable. The mathematical architecture should remain permanent.

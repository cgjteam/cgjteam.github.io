# STYLEGUIDE.md

## CGJteam Lab — Style Guide and Architectural Standards

This document establishes the mandatory editorial and architectural standards for the CGJteam Lab project. All future research logs, documentation, and formal implementations must adhere to these conventions to ensure consistency, readability, and long-term maintainability.

---

### 1. Architectural Layers
The project adheres to a strict three-layer architecture:
1. **Research Logs:** Narrative documentation, investigations, and methodological evolution.
2. **Geometry Library Index (`Geometry.md`):** The single, authoritative architectural hub mapping all identifiers, dependencies, and implementation status.
3. **Geometry Implementation (`Geometry.lean`):** The executable formal code in Lean.

*Note: Documentation must remain valid even after the implementation undergoes refactoring.*

---

### 2. Editorial Rules for Research Logs
* **Uniform Lean Formalization Template:** Every log must conclude with:
  ```markdown
  ## Lean Formalization
  (Short introductory paragraph)

  **Primary formal object**

  **Project resources**

  **Purpose**

  **Formalization resources**

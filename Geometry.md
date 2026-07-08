# Geometry Library Index

**Version:** 4.0
**Last updated:** 2026-07-08

## Repository
- **Research Logs:** [Access project logs](./)
- **Geometry Library Index:** [Current document](./Geometry.md)
- **Geometry implementation:** [View Geometry.lean](./Geometry_lean.html)

## Introduction
This document serves as the **authoritative architectural registry** of the CGJteam Lab project. It acts as the public API of the formal library, providing permanent references between Research Logs, the Lean implementation, and stable mathematical identifiers.

## Library Architecture
The formal library follows a hierarchical dependency structure:
1. **Definitions (DEF-xxx):** Geometric primitives.
2. **Axioms (AXM-xxx):** Fundamental assumptions.
3. **Derived Lemmas (LEM-xxx):** Properties and intermediate results.
4. **Main Theorems (THM-xxx):** Major formal developments.

## Library Statistics
| Category | Implemented | Verified | Planned | Total |
| :--- | :--- | :--- | :--- | :--- |
| Definitions | 1 | 1 | 1 | 2 |
| Axioms | 2 | 2 | 0 | 2 |
| Lemmas | 6 | 6 | 1 | 7 |
| Theorems | 1 | 1 | 1 | 2 |

## Object Lifecycle
Every formal object progresses independently through the following stages:
`Planned` → `Specified` → `Implemented` → `Verified` → `Stable`

---

## Formal Objects Registry

### DEF-001 — IsMidpoint
- **Lean declaration:** `IsMidpoint`
- **Kind:** Definition
- **Description:** Predicate defining a point as the midpoint of a line segment.
- **Depends on:** N/A
- **Directly used by:** `DEF-001`, `LEM-002`, `THM-001`
- **Primary research logs:** [Log 002](log-002.html)
- **Origin:** Classical geometry
- **Implementation status:** Implemented
- **Verification status:** Verified
- **Documentation status:** Stable
- **Remarks:** Fundamental for all segment partitioning proofs.

*(... tutaj kontynuacja wpisów dla wszystkich obiektów zgodnie z ujednoliconym szablonem ...)*

---

## Roadmap
### Planned Definitions
- DEF-002: TriangleAngleSum
### Planned Lemmas
- LEM-007: ParallelPostulateVariant
### Planned Theorems
- THM-002: (TBD)

---

## Dependency Graph (Mathematical)
```text
DEF-001
   │
   ▼
LEM-002 ──┐
          │
AXM-001 ──┼──▶ THM-001
          │
AXM-002 ──┘

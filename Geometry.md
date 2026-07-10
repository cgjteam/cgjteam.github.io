---
layout: default
---

# Geometry Library Index

**Version:** 5.1  
**Last updated:** 2026-07-10

## Repository

- **Research Logs:** [Project Home](./index.html)
- **Geometry Library Index:** [Current document](./Geometry.md)
- **Geometry implementation:** [View Geometry.lean](./Geometry_lean.html)

---

## Quick Navigation

- [Introduction](#introduction)
- [Library Architecture](#library-architecture)
- [Library Statistics](#library-statistics)
- [Formal Objects Registry](#formal-objects-registry)
- [Roadmap](#roadmap)

---

## Introduction

This document serves as the authoritative architectural registry of the CGJteam Lab project. It records the mathematical architecture of the geometry library.

---

## Library Architecture

1. **Definitions** — Geometric primitives.
2. **Axioms** — Fundamental assumptions (CORE, FINLAY).
3. **Derived Lemmas** — Reusable results.
4. **Main Theorems** — Complete formal developments.

---

## Library Statistics

| Category | Implemented | Verified | Total |
|:---------|------------:|---------:|------:|
| Definitions | 1 | 1 | 1 |
| Axioms | 11 | 11 | 11 |
| Lemmas | 6 | 6 | 6 |
| Theorems | 2 | 2 | 2 |

---

## Formal Objects Registry

### DEF-001 — IsMidpoint
- **Lean declaration:** IsMidpoint
- **Status:** Stable
- **Remarks:** Fundamental for construction.

### AXM-001 — SAS
- **Lean declaration:** SAS
- **Status:** Stable
- **Kind:** CORE

### AXM-003 — ParallelogramFromFinlayParallel
- **Lean declaration:** ParallelogramFromFinlayParallel
- **Status:** Stable
- **Kind:** FINLAY

### THM-001 — MedianConcurrency
- **Lean declaration:** MedianConcurrency
- **Status:** Stable
- **Description:** Synthetic proof of the concurrency of the medians.

### THM-002 — FinlayProof
- **Lean declaration:** FinlayProof
- **Status:** Frozen
- **Description:** Formal proof of the median intersection property using the Finlay method.
- **Remarks:** This proof should not be modified.

---

## Roadmap

### Planned Theorems
- **THM-003** — *(TBD)*

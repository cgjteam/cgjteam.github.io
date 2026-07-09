---
layout: default
---

# Geometry Library Index

**Version:** 5.0
**Last updated:** 2026-07-09

## Repository

- **Research Logs:** [Project Home](./index.html)
- **Geometry Library Index:** [Current document](./Geometry.md)
- **Geometry implementation:** [View Geometry.lean](./Geometry_lean.html)

---

## Quick Navigation

- [Introduction](#introduction)
- [Library Architecture](#library-architecture)
- [Library Statistics](#library-statistics)
- [Object Lifecycle](#object-lifecycle)
- [Formal Objects Registry](#formal-objects-registry)
- [Roadmap](#roadmap)

---

## Introduction

This document serves as the authoritative architectural registry of the CGJteam Lab project. It provides the permanent interface between the Research Logs, the formal Lean implementation, and the stable mathematical identifier system.

---

## Library Architecture

The formal geometry library is organized into four hierarchical layers. Dependencies always point from higher-level mathematical objects to their prerequisites.

1. Definitions (DEF-xxx) - Geometric primitives and predicates.
2. Axioms (AXM-xxx) - Fundamental assumptions.
3. Derived Lemmas (LEM-xxx) - Reusable intermediate results.
4. Main Theorems (THM-xxx) - Complete formal developments.

---

## Library Statistics

| Category | Implemented | Verified | Planned | Total |
|:---|---:|---:|---:|---:|
| Definitions | 1 | 1 | 1 | 2 |
| Axioms | 2 | 2 | 0 | 2 |
| Lemmas | 6 | 6 | 1 | 7 |
| Theorems | 1 | 1 | 1 | 2 |

---

## Identifier System

Every mathematical object receives a permanent identifier. Identifiers remain stable even if declaration names change, proofs are rewritten, source files are reorganized, or the implementation is refactored.

---

## Object Lifecycle

Each formal object progresses independently through the following stages:

Planned -> Specified -> Implemented -> Verified -> Stable

---

## Formal Objects Registry

### DEF-001 - IsMidpoint
- Lean declaration: `IsMidpoint`
- Kind: Definition
- Description: Predicate defining a point as the midpoint of a line segment.
- Depends on: N/A
- Directly used by: LEM-002, THM-001
- Primary research logs: [Log 002](log-002.html)
- Implementation status: Implemented
- Verification status: Verified
- Documentation status: Stable

### AXM-001 - SAS
- Lean declaration: `SAS`
- Kind: Axiom
- Description: Side-Angle-Side congruence axiom.
- Depends on: N/A
- Directly used by: THM-001
- Primary research logs: [Log 003](log-003.html)
- Implementation status: Implemented
- Verification status: Verified
- Documentation status: Stable

### THM-001 - MedianConcurrency
- Lean declaration: `MedianConcurrency`
- Kind: Theorem
- Description: Concurrency of the medians of a triangle.
- Depends on: DEF-001, AXM-001, AXM-002, LEM-001, LEM-002, LEM-003, LEM-004, LEM-005, LEM-006
- Directly used by: None
- Primary research logs: Logs 001-020
- Implementation status: Implemented
- Verification status: Verified
- Documentation status: Stable

---

## Roadmap
- Planned Definitions: DEF-002 (TriangleAngleSum)
- Planned Axioms: None
- Planned Lemmas: LEM-007 (ParallelPostulateVariant)
- Planned Theorems: THM-002 (TBD)

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

This document serves as the **authoritative architectural registry** of the CGJteam Lab project. It provides the permanent interface between the Research Logs, the formal Lean implementation, and the stable mathematical identifier system.

Unlike the implementation, this document is intended to remain stable as the project evolves. It records the mathematical architecture of the geometry library, independently of code refactoring or implementation details.

---

## Library Architecture

The formal geometry library is organized into four hierarchical layers. Dependencies always point from higher-level mathematical objects to their prerequisites.

1. **Definitions (DEF-xxx)** — Geometric primitives and predicates.
2. **Axioms (AXM-xxx)** — Fundamental assumptions.
3. **Derived Lemmas (LEM-xxx)** — Reusable intermediate results.
4. **Main Theorems (THM-xxx)** — Complete formal developments.

---

## Library Statistics

| Category | Implemented | Verified | Planned | Total |
|:---------|------------:|---------:|--------:|------:|
| Definitions | 1 | 1 | 1 | 2 |
| Axioms | 2 | 2 | 0 | 2 |
| Lemmas | 6 | 6 | 1 | 7 |
| Theorems | 1 | 1 | 1 | 2 |

---

## Identifier System

Every mathematical object receives a permanent identifier.

Examples:

- DEF-001
- AXM-001
- LEM-004
- THM-001

Identifiers remain stable even if

- declaration names change,
- proofs are rewritten,
- source files are reorganized,
- the implementation is refactored.

Research Logs always reference identifiers rather than implementation details.

---

## Object Lifecycle

Each formal object progresses independently through the following stages:

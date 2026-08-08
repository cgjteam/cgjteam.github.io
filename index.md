---
layout: default
---

# CGJteam Lab

Welcome to the CGJteam research laboratory.

CGJteam Lab is an open research project exploring classical synthetic
Euclidean geometry through formal verification in Lean 4.

The project combines three complementary goals:

-   developing a reusable Lean geometry library,
-   studying the logical architecture of synthetic geometry,
-   documenting how reusable mathematical theories emerge from the
    formalization of classical proofs.

Rather than designing an axiomatic geometry library from first
principles, the project develops its architecture by analysing formally
verified proofs and extracting their reusable mathematical components.

## Research Logs

-   **[1. Finlay's Synthetic Proof](log-001.md)**
    -   Formal verification of Ian Finlay's proof of the concurrency of
        triangle medians.
-   **[2. The Midsegment Theorem and Parallelograms](log-002.md)**
    -   Mathematical analysis of the Midsegment Theorem and the role of
        parallelograms.
-   **[3. Extracting Synthetic Proof Components](log-003.md)**
    -   Extracting reusable geometric arguments from a single proof.
-   **[4. First Geometry API Extracted from Finlay](log-004.md)**
    -   Transition from individual proof steps toward reusable
        mathematical structures.
-   **[5. Beyond the Proof](log-005.md)**
    -   Lessons learned after the first complete formalization.
-   **[6. Reverse Engineering the Geometry Library](log-006.md)**
    -   Analysis of an existing Lean geometry library and its
        mathematical architecture.
-   **[7. Definitions Before Theorems](log-007.md)**
    -   The role of definitions in revealing logical dependencies.
-   **[8. What Finlay Did Not Need](log-008.md)**
    -   Identifying geometric notions unnecessary for the proof.
-   **[9. The Dependency Structure of a Formal Proof](log-009.md)**
    -   Viewing formal proofs as dependency graphs.
-   **[10. From Formal Proof to Geometry Atlas](log-010.md)**
    -   From one theorem toward a systematic organization of geometric
        knowledge.
-   **[11. Primitive Relations, Definitions and the Geometry
    Core](log-011.md)**
    -   Reducing the logical kernel by replacing primitive notions with
        definitions.
-   **[12. Eliminating the First Axiom](log-012.md)**
    -   Replacing an axiom by a formal Lean proof without affecting
        higher-level developments.
-   **[13. Refactoring the Incidence Layer](log-013.md)**
    -   Introducing an incidence-based foundation inspired by Hilbert's
        axioms.
-   **[14. From Finlay's Proof to Parallelogram Reasoning](log-014.md)**
    -   This log documents the extraction of the Theory of
        Parallelograms as an independent module of the Geometry Library,
        originating from the formal analysis of Finlay's synthetic
        proof.
-   **[15. MidsegmentParallel: A Reusable Construction
    Pattern](log-015.md)**
    -   This log analyzes the reusable construction behind
        MidsegmentParallel.
-   **[16. Reconstructing Suppes' Midsegment Theorem](log-016.md)**
    -   Reconstruction of Suppes' constructive proof of the Midsegment
        Theorem from the midpoint and doubling operations.
-   **[17. Suppes as an Alternative Midsegment Route](log-017.md)**
    -   A Suppes-based alternative to the existing MidsegmentParallel
        development and Finlay proof.
-   **[18. Refactoring the Hilbert and Suppes
    Architecture](log-018.md)**
    -   A more compact dependency structure preserving GeometryBase as
        the shared language of the Hilbert and Suppes proof routes.
-   **[19. Tarski as a Third Route to Finlay's Proof](log-019.md)**
    -   An independent Tarski-based route through primitive betweenness
        and congruence, an explicit GeometryBase bridge, the Midsegment
        Theorem and Finlay's proof.
-   **[20. Suppes Parallelism and Parallelogram
    Recognition](log-020.md)**
    -   Development of the Suppes parallelism interface, parallelogram
        recognition, and completion of the Suppes route to Finlay's
        proof.
-   **[21. The Hilbert Route to Finlay's Proof](log-021.md)**
    -   Reconstruction of the current Hilbert-based route from the
        primitive geometric language through the Hilbert axioms and
        interface to the Midsegment Theorem and Finlay's proof.
-   **[22. The Axiomatic Structure of the Hilbert Route](log-022.md)**
    -   Reconstruction of the Hilbert axiom hierarchy and the logical
        boundary between neutral and Euclidean geometry.
-   **[23. The Hilbert Interface: From Axioms to Synthetic
    Geometry](log-023.md)**
    -   Analysis of the reduction layer connecting Hilbert's
        foundational geometry with the reusable synthetic API.
-   **[24. Finlay's Proof on the Hilbert Route](log-024.md)**
    -   Reconstruction of the complete Hilbert-based Finlay argument,
        from the construction of the auxiliary configuration to the
        concurrency of the three medians.
-   **[25. The Axiomatic Structure of the Suppes Route](log-025.md)**
    -   Reconstruction of the active Suppes foundation based on
        midpoint, doubling and collinearity, including the separation of
        `SuppesCore` from the current proof route.
-   **[26. The Suppes Interface: From Primitive Operations to Affine
    Geometry](log-026.md)**
    -   Analysis of the main Suppes theory layer, including primitive
        triangles, primitive parallelograms, `SuppesParallel`, derived
        affine results and the remaining explicit assumptions.
-   **[27. The Midsegment Theorem on the Suppes Route](log-027.md)**
    -   Reconstruction of the compact Suppes Midsegment proof through
        Theorem 11, primitive parallelograms and derived parallelism.
-   **[28. Finlay's Proof on the Suppes Route](log-028.md)**
    -   Reconstruction of the current Suppes-based Finlay argument and
        identification of the remaining explicit assumptions in parallel
        extension, parallelogram recognition and diagonal bisection.
-   **[29. The Axiomatic Structure of the Tarski Route](log-029.md)**
    -   Reconstruction of the Tarski axiom hierarchy and the derived
        point-based geometry built from betweenness and congruence,
        including the remaining deferred interface results.
-   **[30. The Midsegment Theorem on the Tarski Route](log-030.md)**
    -   Reconstruction of the Tarski Midsegment proof through central
        symmetry, congruence, strict parallelism, parallelogram cases
        and collinearity transfer.
-   **[31. Finlay's Proof on the Tarski Route](log-031.md)**
    -   Reconstruction of the active Tarski-based Finlay argument,
        including the midpoint-defined parallelogram structure and the
        remaining deferred dependencies below the high-level proof.
-   **[32. Architectural Separation of the Hilbert and Tarski
    Formalizations](log-032.md)**
    -   Investigated the feasibility of a shared geometry core and
        established the project architecture as three independent
        formalization frameworks: Hilbert, Tarski and Suppes.
-   **[33. Reducing Dependencies and Simplifying the Project
    Architecture](log-033.md)**
    -   Removal of unnecessary Mathlib dependencies, introduction of the
        local `UnorderedPair` abstraction, simplification of the Suppes
        route, and reduction of the project dependency graph.
-   **[34. Architectural Principles Emerging from the Geometry
    Library](log-034.md)**
    -   Synthesis of the architectural principles that emerged from the
        development of the Hilbert, Tarski and Suppes formalizations,
        including modularity, interface design, dependency management
        and comparative formalization.
-   **[35. Common Infrastructure Audit](log-035.md)**
    -   Audit of the common infrastructure layer, extraction of
        representation-independent components, and comparison of the
        Hilbert, Tarski and Suppes interfaces.
-   **[36. Refactoring the Tarski Route](log-036.md)**
    -   Simplification of the Tarski proof architecture by eliminating
        temporary interface layers, refactoring the Finlay proof, and
        isolating the remaining deferred midpoint construction.
-   **[37. Completing the Tarski Route to Finlay's Proof](log-037.md)**
    -   Completion of the Tarski-based reconstruction of Finlay's
        theorem, elimination of unnecessary hypotheses from the public
        interface, reorganization of the proof into reusable logical
        layers, and identification of the remaining local assumptions
        awaiting formal derivation.
-   **[38. Simplifying the Tarski Architecture](log-038.md)**
    -   Systematic reduction of the active Tarski interface using
        `FinlayProofTarski` and its real dependencies as the reference
        point.
-   **[39. Reconstructing the Tarski Dependencies](log-039.md)**
    -   Transformation of the remaining local axioms into explicit proof
        obligations and establishment of a dependency-driven
        reconstruction method.
-   **[40. Eliminating a Tarski Midpoint Axiom](log-040.md)**
    -   Reconstruction of a deferred midpoint result from the existing
        neutral Tarski theory and removal of the corresponding local
        axiom.
-   **[41. Isolating the Euclidean Parallelism Assumption](log-041.md)**
    -   Identification of `parallelogram_of_two_parallel_pairs` as a
        theorem belonging to the Euclidean parallelism layer rather than
        to neutral Tarski geometry.
-   **[42. Book Zero as a Working Layer above Hilbert
    Geometry](log-042.md)**
    -   Reconstruction of the Beeson--Narboux--Wiedijk Book Zero over
        the CGJteamLab Hilbert foundation, testing an independently
        developed corpus of elementary synthetic geometry as the working
        layer between axioms and classical proofs.
-   **[43. What Should We Look for in the BNW Corpus?](log-043.md)**
    -   Reframing the BNW reconstruction as an experiment in Lean 4:
        observing reusable theorem-level results, possible typeclass
        boundaries, recurring proof automation patterns, and
        proof-specific arguments before designing a classical geometry
        interface.
        
-   **[44. Completing Book Zero](log-044.md)**
    -   Completion of the Beeson--Narboux--Wiedijk Book Zero reconstruction over the
        CGJteamLab Hilbert foundation. Almost all temporary interface axioms
        were eliminated, leaving only the primitive null-segment assumptions,
        and the project now moves from reconstructing elementary synthetic
        geometry toward studying the reusable architecture of Euclidean proofs.
        
-   **[45. Beginning the Reconstruction of Book I](log-045.md)**
    -   Beginning the reconstruction of Book I over the completed Book Zero
        layer, using the classical propositions as a test of whether the
        elementary synthetic results form a practical interface for larger
        geometric proofs.

-   **[46. The Equilateral Triangle as the First Book I Test](log-046.md)**
    -   Reconstruction of Euclid's Proposition 1 reveals the first clear
        boundary between the derived synthetic reasoning supplied by Book Zero
        and the geometric existence principles required to construct new
        configurations.
        

------------------------------------------------------------------------

## Geometry Library

The reusable Lean 4 geometry library developed within the project.

-   **[Geometry Library Index](Geometry.md)**
    -   Overview of the library architecture and its mathematical
        components.
-   **[GitHub Repository](https://github.com/cgjteam/CGJteamLab)**
    -   Lean source code and project development.
-   **[Project Wiki](https://github.com/cgjteam/CGJteamLab/wiki)**
    -   Documentation of the library architecture, design principles and
        development logs.

------------------------------------------------------------------------

## Project Status

**Active research project.**

Current development currently focuses on two complementary directions:

-   extending the reusable Geometry Library,
-   refining its logical architecture by replacing primitive assumptions
    with formally justified definitions and reusable geometric theories.

The long-term objective is a modular Lean library in which the
architecture emerges from the formal analysis of classical synthetic
geometry rather than from a predetermined axiomatic design.

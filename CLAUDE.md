# CLAUDE.md — U1 Conjecture (Trustless Monetary Systems)

## Overview

This repository formalizes the **U1 Conjecture**: a thermodynamic theory of monetary selection based on the coordination capacity ratio κ = S/H.

**Core Result:**
```
κ = S/H = Irreversibility / Uncertainty
```

Where S is thermodynamic irreversibility (bits) and H is monetary informational entropy (bits).

## Quick Reference

| Command | Description |
|---------|-------------|
| `make pdf` | Build the paper |
| `ots verify proofs/.../digest.txt.ots` | Verify timestamp |
| `latexmk -pdf main.tex` | Alternative build |

## Key Concepts

- **κ (kappa)**: Coordination capacity ratio — dimensionless measure of monetary coordination capacity
- **S (script-S)**: Thermodynamic irreversibility — cumulative energy / Landauer limit
- **H (script-H)**: Monetary entropy — Shannon uncertainty about future state
- **A₁–A₄**: Core axioms defining trustless systems
- **T₁–T₂**: Theorems on difficulty adjustment and security scaling

## Project Structure

```
sections/           # LaTeX chapter files (01_intro through 08_conclusion)
proofs/             # Timestamped proof artifacts
  axioms/           # A₁–A₄ definitions (block 921,080)
  coordination-capacity/
    v0.1/           # Initial C_coord
    v0.2/           # Extended framework
    v0.3/           # κ = S/H (block 927,391) ← CURRENT
build/              # Compiled PDF output
```

## Working with This Repository

### Editing Content
- LaTeX sections are in `sections/*.tex`
- Use existing macros: `\coord`, `\phys`, `\irr`, `\reorg`, `\honest`, `\secured`
- Use theorem environments: `theorem`, `axiom`, `conjecture`, `corollary`, `definition`, `remark`

### Creating New Proof Versions
1. Create `proofs/.../vX.Y/` directory
2. Write content to `C_coord_vX.Y.tex`
3. Generate: `sha256sum C_coord_vX.Y.tex > digest.txt`
4. Stamp: `ots stamp digest.txt`
5. After confirmation: `ots upgrade digest.txt.ots`
6. Create README.md and ANCHOR files

### IMPORTANT: Never Modify Timestamped Files
Files with `.ots` proofs are immutable. Create new versions instead.

## Reference Values (κ estimates, 2025)

| System | S (bits) | H (bits) | κ |
|--------|----------|----------|---|
| Bitcoin | 10³⁹ | ~1 | 10³⁹ |
| Gold | 10¹⁹ | ~10 | 10¹⁸ |
| USD | 10⁸ | ~20 | 10⁶ |

Key ratio: κ_BTC / κ_Gold ≈ 10²¹ (phase transition, not incremental)

## Priority Claims

- **Axioms A₁–A₄**: Block 921,080 (Oct 2025)
- **κ = S/H**: Block 927,391 (Dec 2025)
- Digest: `6859efcb4fb387985ad184ff27dfa8088c55afc8b21cd618ff0a42d85dfd29c2`

## License

CC BY 4.0 — Attribution required, commercial use allowed.

## Claude Code Skill

See `.claude/skills/u1-conjecture.md` for comprehensive theory reference and task guidance.

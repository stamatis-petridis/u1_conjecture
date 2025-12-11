# Coordination Capacity v0.3 — Dual-Entropy Characterization

## Summary

This version introduces the **coordination capacity ratio** κ (kappa), a dimensionless invariant that unifies thermodynamic irreversibility with informational predictability:

$$\kappa \equiv \frac{\mathcal{S}}{\mathcal{H}}$$

Where:
- **S** = Thermodynamic irreversibility (bits) — cumulative energy expenditure normalized by Landauer's limit
- **H** = Monetary informational entropy (bits) — uncertainty about future monetary states

## What's New in v0.3

| Component | Description |
|-----------|-------------|
| `Definition 3.1` | Thermodynamic irreversibility S_Π (bit-normalized via Landauer) |
| `Definition 3.2` | Monetary informational entropy H_Π (Shannon conditional entropy) |
| `Definition 3.3` | **Coordination capacity ratio κ = S/H** |
| `Proposition 3.4` | Boundary behavior of κ |
| `Conjecture 3.5` | Capital flow gradient (κ differential drives capital migration) |
| `Examples` | Empirical estimates for Bitcoin, Gold, USD |
| `Corollary` | Hierarchy: κ_BTC >> κ_Gold >> κ_USD |

## Key Results

### Empirical Estimates (2025)

| System | S (bits) | H (bits) | κ |
|--------|----------|----------|---|
| Bitcoin | 10³⁹ | ~1 | 10³⁹ |
| Gold | 10¹⁹–10²⁰ | ~10 | 10¹⁸–10¹⁹ |
| USD | ~0 | ~20 | ~0 |

### Interpretation

κ = Irreversibility / Uncertainty = (What cannot be undone) / (What cannot be known)

- High κ → Strong coordination substrate (Bitcoin)
- Low κ → Weak coordination substrate (Fiat)

### Capital Flow Conjecture

Capital flows from low-κ to high-κ systems at rate proportional to the gradient:

$$\dot{K}_{A \to B} \propto (\kappa_B - \kappa_A) \cdot K_A$$

This is analogous to heat flow down temperature gradients.

## Relation to Prior Versions

- **v0.1**: Basic C_coord definition + security exponent β
- **v0.2**: Full framework (irreversibility primitive, atomic unit, density ρ_irr)
- **v0.3**: **Dual-entropy characterization with κ = S/H**

## Files

- `C_coord_v0.3.tex` — LaTeX source
- `digest.txt` — SHA-256 hash for timestamping
- `digest.txt.ots` — OpenTimestamps proof (after anchoring)
- `ANCHOR` — Block anchoring metadata
- `COMMIT` — Git commit hash

## Timestamping

To anchor this version:

```bash
# Generate digest
sha256sum C_coord_v0.3.tex > digest.txt

# Create OTS stamp
ots stamp digest.txt

# After confirmation (~1-2 hours), upgrade
ots upgrade digest.txt.ots

# Verify
ots verify digest.txt.ots
```

## Author

Stamatis Petridis  
December 2025

## Priority Claim

This document establishes priority for the coordination capacity ratio κ = S/H as a fundamental measure of monetary system coordination capacity.
# Axioms Proof Pack (v0.1)

This folder binds the **U₁ axioms draft** to a specific Git commit and anchors that state in Bitcoin via OpenTimestamps.

## Scope (files covered)

Commit: `02f31f963d963d56f734a86ffe22df78ace16229`  
Files hashed in this proof:
- `README.md`
- `sections/03_axioms.tex`
- `sections/05_theorems.tex`

Artifacts:
- `digest.txt` — SHA256 list of the files above
- `digest.txt.ots` — OpenTimestamps proof anchored in Bitcoin
- `COMMIT` — the exact Git commit this digest refers to
- `ANCHOR` — metadata about the Bitcoin anchor

Anchor status (as of publication):
- Bitcoin block height: `921080`
- OTS has been **upgraded** and locally verified

---

## Verify

### 1) Bind to the exact repo state
```bash
git fetch --all --tags
git checkout 02f31f963d963d56f734a86ffe22df78ace16229
```
### 2) Check file hashes
```bash
shasum -a 256 -c proofs/axioms/digest.txt
```
### 3) Verify the timestamp
With a local node running and synced:
```bash
ots verify proofs/axioms/digest.txt.ots
```
If your node is behind, you may see “height not found.” Try again later or run:
```bash
ots upgrade proofs/axioms/digest.txt.ots
```
to fold in newer confirmations, then re-verify.

⸻

Notes
- This proof only attests to the three files listed in digest.txt at the commit above. Anything else in the repo is irrelevant to this proof.
- If you regenerate digest.txt, you must not overwrite this file; create a new proof pack (e.g. proofs/axioms-v0.2/) with its own COMMIT, digest.txt, and .ots.

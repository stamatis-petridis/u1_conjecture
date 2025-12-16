# Create New Timestamped Proof Version

Help me create a new versioned proof for the U1 Conjecture.

## Instructions

Ask me:
1. What proof category? (axioms, coordination-capacity, or new)
2. What version number?
3. What's the key content/contribution?

Then guide me through:

1. **Create directory structure**:
   ```bash
   mkdir -p proofs/<category>/v<X.Y>
   ```

2. **Write LaTeX content** to `C_coord_v<X.Y>.tex` or appropriate file

3. **Generate digest**:
   ```bash
   sha256sum <file>.tex > digest.txt
   ```

4. **Record commit**:
   ```bash
   git rev-parse HEAD > COMMIT
   ```

5. **Create README.md** documenting:
   - What's new in this version
   - Key definitions/theorems added
   - Relation to prior versions

6. **Stamp with OpenTimestamps**:
   ```bash
   ots stamp digest.txt
   ```

7. After ~1-2 hours, remind me to:
   ```bash
   ots upgrade digest.txt.ots
   ots verify digest.txt.ots
   ```

8. **Create ANCHOR file** with block metadata once confirmed

IMPORTANT: Never modify existing timestamped files. Always create new versions.

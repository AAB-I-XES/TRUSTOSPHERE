# Controlled Attack Simulator

Purpose: create a repeatable judge demo without needing a real malicious actor.

## Scenario A — Lip-sync mismatch
Start with a consented authentic clip and pair it with a deliberately mismatched audio segment.

Expected:
- sync score decreases
- finding appears
- trust score decreases

## Scenario B — Synthetic/processed voice demo
Use a clearly labeled, consented synthetic voice sample.

Expected:
- audio indicators change
- explanation identifies synthetic/processed indicators

## Scenario C — Provenance removal
Create a demo copy without the original content credentials.

Expected:
- provenance becomes “not found”
- UI explicitly says missing provenance is not proof of manipulation

## Demo principle
The attack simulator must be transparent: label every generated sample as synthetic/simulated and never present it as a real person's manipulated media.

# Risk Fusion Engine

Do not describe the final number as a scientifically calibrated probability.

Use it as a product-level trust/risk score.

Example weighted MVP formula:

trust_score =
  0.25 * identity_score +
  0.20 * visual_score +
  0.20 * audio_score +
  0.15 * sync_score +
  0.20 * provenance_score

If provenance is unavailable, redistribute its weight among available signals and explicitly label the result as lower-evidence.

Risk bands:
- 80–100: trusted / low review priority
- 60–79: review
- 0–59: high risk

Every score must have:
1. contributing signals
2. positive evidence
3. negative evidence
4. limitations

Never say “100% real” or “100% fake.”

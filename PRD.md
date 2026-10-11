# Product Requirements Document

## 1. Goal
Create a convincing hackathon MVP that evaluates whether digital media should be trusted by combining independent evidence sources.

## 2. Target users
- Security analysts
- Fraud/identity teams
- Journalists and fact-checkers
- Enterprise trust & safety teams
- Emergency/government communication teams

## 3. MVP features

### F1 — Media upload
Inputs: image, video, audio.
Acceptance: upload is validated, stored temporarily, and assigned an analysis ID.

### F2 — Identity enrollment
Store a consented demo identity with face/voice reference embeddings.
Acceptance: an enrolled demo identity can be compared against submitted media.

### F3 — Face/video forensics
Extract frames and calculate multiple visual/temporal signals.
Acceptance: UI shows individual signal scores and evidence timestamps.

### F4 — Audio/voice forensics
Extract audio and calculate audio integrity/synthetic indicators.
Acceptance: UI reports audio signals separately from visual signals.

### F5 — Lip-sync analysis
Compare speech timing with visible mouth movement.
Acceptance: system can flag deliberately mismatched demo media.

### F6 — Provenance
Inspect supported C2PA/content-credential data and basic file metadata.
Acceptance: show “verified/available,” “not found,” or “invalid” rather than treating missing provenance as proof of manipulation.

### F7 — Trust engine
Fuse signals into a SENTINEL Trust Score and risk band.
Acceptance: every result includes a human-readable explanation.

### F8 — Attack simulator
Transform a known-good demo case into a controlled simulated attack case.
Acceptance: judge can click one button and see the evidence profile change.

### F9 — Investigation report
Generate a concise JSON/PDF-ready report containing inputs, scores, evidence and limitations.

## 4. Non-goals
- Universal deepfake detection
- Identity verification for real users without consent
- Law-enforcement-grade attribution
- Automated accusations
- Blockchain-based identity in MVP

## 5. Success metrics
- Demo analysis completes in under 20 seconds for short media.
- Judges can understand the result without reading documentation.
- Attack simulation reliably changes at least 2–3 independent signals.
- Every high-risk decision has an explanation.

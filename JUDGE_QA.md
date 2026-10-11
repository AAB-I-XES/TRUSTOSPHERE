# Likely Judge Questions

## “Is your detector 100% accurate?”
No. SENTINEL is intentionally not presented as a universal detector. It combines independent signals and provides explainable evidence for human review.

## “Why provenance if AI detection exists?”
They answer different questions. Forensic analysis looks for manipulation indicators; provenance can provide evidence about content origin/history. Missing provenance is not itself evidence of fakery.

## “What is innovative?”
The innovation is the multimodal evidence-fusion and explainability layer: identity, visual, audio, synchronization and provenance signals are evaluated together rather than producing a single opaque classifier output.

## “Can it scale?”
Yes. Media processing and forensic analysis can be asynchronous workers. The API can remain stateless, with object storage for media and PostgreSQL for analysis metadata.

## “What happens when a detector is wrong?”
The system exposes uncertainty and contributing evidence instead of making an irreversible accusation. Human review remains part of the workflow.

## “What is the next step?”
Continuous evaluation against new manipulation methods, calibration on representative real-world data, adversarial testing, and privacy-preserving identity verification.

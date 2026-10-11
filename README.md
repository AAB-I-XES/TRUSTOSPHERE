# SENTINEL — AI Digital Identity & Deepfake Defense Network

Hackathon MVP specification for an explainable multimodal media-trust system.

## MVP promise
Upload media → analyze identity/media/provenance signals → explain risks → produce a SENTINEL Trust Score.

## Core modules
1. Identity verification
2. Video/face forensics
3. Voice/audio forensics
4. Lip-sync consistency
5. C2PA/provenance inspection
6. Explainable risk fusion
7. Attack simulator
8. Optional liveness challenge

## Suggested stack
- Frontend: React + TypeScript + Vite
- Backend: FastAPI + Python
- Database: PostgreSQL/Supabase
- Async/cache: Redis (optional)
- Storage: S3-compatible object storage
- ML: Python model services
- Deployment: Vercel + containerized API

## Demo flow
1. Enroll a consented demo identity.
2. Upload authentic media.
3. Show high trust score.
4. Run a simulated manipulation scenario.
5. Re-analyze.
6. Show the score falling and explain exactly which signals changed.

## Important product positioning
SENTINEL is a decision-support system, not a universal “fake detector.” A high-risk score means the available evidence warrants review; it does not prove that media is fake.

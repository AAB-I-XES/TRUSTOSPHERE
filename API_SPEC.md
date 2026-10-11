# API Specification

## POST /v1/identities
Create a demo identity.

Request:
```json
{
  "display_name": "Demo User"
}
```

## POST /v1/identities/{identity_id}/references
Upload consented reference media.

## POST /v1/analyses
Create an analysis job.

Request:
```json
{
  "identity_id": "demo-001",
  "media_id": "media-001",
  "mode": "full"
}
```

Response:
```json
{
  "analysis_id": "analysis-001",
  "status": "queued"
}
```

## GET /v1/analyses/{analysis_id}
Returns:
```json
{
  "status": "completed",
  "trust_score": 74,
  "risk_band": "review",
  "signals": {
    "identity": 91,
    "visual": 63,
    "audio": 71,
    "sync": 57,
    "provenance": 84
  },
  "findings": [
    {
      "severity": "warning",
      "title": "Lip-sync inconsistency",
      "explanation": "Speech timing and visible mouth movement diverged in sampled segments."
    }
  ]
}
```

## POST /v1/simulations/attack
Runs a controlled demo scenario and returns before/after analysis IDs.

## GET /v1/reports/{analysis_id}
Returns a report representation suitable for PDF rendering.

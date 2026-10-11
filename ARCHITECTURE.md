# System Architecture

```text
                    React / TypeScript
                           |
                       REST API
                           |
                    FastAPI Gateway
                           |
          +----------------+----------------+
          |                |                |
     Media Processor   Identity Engine   Provenance
          |                |                |
     +----+----+           |             C2PA/metadata
     |         |           |
   Video     Audio     Face/voice refs
     |         |
  Frames    waveform
     |         |
     +----+----+
          |
   Forensic analyzers
          |
          v
     Signal Registry
          |
          v
     Risk Fusion Engine
          |
          v
  Trust Score + Evidence
          |
          v
     Investigation UI
```

## Service boundaries
- `api`: authentication, uploads, analysis jobs, reports
- `media`: decoding, frame/audio extraction
- `identity`: enrollment and similarity
- `forensics`: visual/audio/sync signal generation
- `provenance`: C2PA and metadata inspection
- `risk`: deterministic fusion and explanations

## Design principle
Keep individual signals independent enough that the fusion layer can explain which evidence drove a result.

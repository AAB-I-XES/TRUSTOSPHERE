# Recommended Repository Structure

```text
sentinel/
├── apps/
│   ├── web/
│   │   ├── src/
│   │   │   ├── components/
│   │   │   ├── pages/
│   │   │   ├── api/
│   │   │   └── types/
│   │   └── package.json
│   └── api/
│       ├── app/
│       │   ├── main.py
│       │   ├── routes/
│       │   ├── services/
│       │   │   ├── media.py
│       │   │   ├── identity.py
│       │   │   ├── forensics.py
│       │   │   ├── provenance.py
│       │   │   └── risk.py
│       │   └── models/
│       └── requirements.txt
├── ml/
│   ├── visual/
│   ├── audio/
│   └── sync/
├── infra/
│   ├── docker/
│   └── db/
├── docs/
│   ├── PRD.md
│   ├── ARCHITECTURE.md
│   └── API_SPEC.md
└── README.md
```

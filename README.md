# dragoon-sdk

The public client API for Dragoon.

This repository defines the language-neutral control and edge-agent APIs used
to operate a Dragoon deployment. It intentionally does not contain the MOQT
protocol implementation, the relay, or the media server.

```text
robot / vehicle app
  language SDK
      │ local control API
      ▼
  dragoon-agent
      │ MOQT / WebTransport
      ▼
  dragoon-moq

control room / operator tool
  language SDK
      │ control API
      ▼
  dragoon-moq control plane
```

## Scope

- Device SDK: start and stop cameras, select tracks, read agent and stream
  status, and receive events from a local `dragoon-agent`.
- Control SDK: obtain server information, issue viewer tokens, and discover
  streams and rooms.
- Media transport is owned by `dragoon-agent` and `dragoon-moq`. The SDK does
  not reimplement MOQT.

The browser viewer remains part of the Dragoon web application for now. A
browser SDK can be added after the viewer API is stable.

## API

- `api/control/v1/control.proto`: server information and viewer tokens.
- `api/agent/v1/agent.proto`: local edge-agent control and events.

The APIs are draft `v1` contracts. Generated clients and language bindings will
be added incrementally.

## Languages

| Directory | Status |
| --- | --- |
| `python/` | planned |
| `cpp/` | planned |
| `rust/` | planned |
| `typescript/` | planned |
| `ros2/` | planned |

## License

Apache License 2.0. Copyright 2026 okonomipizza. See `LICENSE` and `NOTICE`.

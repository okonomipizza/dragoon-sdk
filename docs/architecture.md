# SDK architecture

## Device path

A robot or vehicle application links a language SDK and calls the local
`AgentService`.

```text
application
  └─ SDK -> dragoon-agent (local gRPC/Unix socket)
              ├─ camera capture
              ├─ H.264 encode
              ├─ MOQT PUBLISH
              ├─ local ring buffer
              └─ reconnect and telemetry
```

The SDK does not open QUIC or WebTransport streams for publishing. This keeps
camera, encoder, NAT, and reconnect behavior in one controlled process.

## Viewer path

Operator tools call `ControlService` to obtain a viewer token and relay URL.
The media path is intentionally outside the first SDK contract. The Dragoon web
application is the first viewer. A browser or native viewer SDK can be added
after the viewer media API is stable.

## Versioning

`v1` is a draft contract. Additive fields are allowed. Breaking changes require
a new package version. Generated clients must not depend on unexported MOQT
types.

# API contracts

The API is defined as Protocol Buffers and versioned by package path.

- `control/v1` is the remote control plane.
- `agent/v1` is the local edge-agent API.

These contracts are draft until Dragoon reaches a stable SDK release. Breaking
changes should use a new package version (`v2`) rather than silently changing
`v1`.

Language SDKs should generate clients from these files and keep handwritten
wrappers small. The API must not expose MOQT wire messages or Track Aliases.

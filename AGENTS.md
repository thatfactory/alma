# AGENTS Instructions (ALMA)

## Umbrella Dependency Update Flow
When a package provided through `ALMA` (for example `Device`) needs an update, use this sequence:

1. Update and release the leaf package first.
2. Bump the exact package dependency in `ALMA/Package.swift`.
3. Release a new `ALMA` version.
4. Bump `ALMA` in the consumer app/project.

This keeps the umbrella dependency graph explicit and reproducible.

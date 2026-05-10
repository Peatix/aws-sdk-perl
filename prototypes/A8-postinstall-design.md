# A8 prototype: tooling-stripped dist + on-install materialise (design)

## Sketch

`Paws-1.00.tar.gz` ships a small `lib/` (Paws.pm + Paws::API/Net/Model
loaders, ~460 KB) and `share/smithy/` (164 MB or, with A1+A2,
~10 MB). The tarball does NOT ship pre-built service `.pm` files.

`Build.PL` declares a postinstall step that runs the materialiser once
per service-name in a configured list, dumps the resulting class
sources to `lib/Paws/<Service>.pm` in the install destination, and
records the input `share/smithy/<svc>` SHA as a sidecar so a later
`cpanm Paws --reinstall` reuses the work or invalidates as needed.

Result of an install:
- `share/smithy/` shipped (so non-pre-built services still on-demand
  materialise; user can opt to pre-build the long tail later).
- `lib/Paws/<Service>.pm` files for the pre-built service set on
  disk after install.
- Runtime: legacy AOT speed for pre-built services; on-demand for
  the rest.

## Trade-off matrix

| Dimension | Current on-demand | A7 hybrid | A8 postinstall |
|---|---|---|---|
| Tarball size | 15.8 MB | 30 MB (A7 if shipped today, untested) | 15.8 MB |
| Wall install time | 22 s | 30+ s | 22 s + materialise(~17 s for all 425) |
| Install size | 166 MB | 170 MB | 166 MB + 138 MB AOT |
| Cold first-call (10 hot) | 4.6 s | 1.7 s | 1.7 s |
| Build complexity | low | medium (CI script generates AOT) | high (postinstall hook) |
| `cpanm Paws` works | yes | yes | yes if Build.PL hook runs |
| Reinstall semantics | normal | normal | hook re-runs; needs idempotency |

Numbers in italic are estimates extrapolated from A7 measurements; an
actual prototype would need to wire up the Build.PL hook.

## Why not prototyped end-to-end here

Three reasons:
- The runtime cost is bounded above by what A7 already measured; if
  A7 first-call is acceptable to the maintainer, A8 is at least that
  good (probably better, because cache directory + `do` path is not
  on the hot path).
- Build.PL hook engineering is non-trivial: error reporting from the
  install step must be readable when materialiser fails, the install
  must be re-runnable, and the hook must work under `cpanm
  --notest --quiet` and inside CPAN testers' container fleet.
- The existing AOT generator (`builder-bin/build_*.pl` referenced
  from the dist's older builder-lib tree) is the same materialiser
  code, just driven from a CLI entry point; if the maintainer wants
  A8, the implementation is "wire that script as a Build.PL action"
  rather than a fresh design.

## When this is the right answer

A8 is preferred over A7 when:
- The tarball-size budget is tighter than the install-size budget
  (i.e. CI bandwidth matters more than disk).
- The set of pre-built services should be configurable per-install
  (e.g. a Lambda layer that only builds S3+DynamoDB; an EC2 fleet
  that builds the full set).

A8 is worse than A7 when:
- The user can't run perl during install (some package managers
  freeze the build environment).
- Reproducibility matters more than flexibility — A7's AOT is built
  once at dist time and ships verbatim; A8's AOT depends on the
  user's environment at install time.

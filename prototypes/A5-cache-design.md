# A5 prototype: persistent first-call cache (design + measurement)

## Sketch

First call to `Paws->service('S3')` runs the materialiser as today
(building 392 packages from `share/smithy/s3/s3.smithy.json`), then
serialises the materialised state to a per-service file under a cache
root:

    $XDG_CACHE_HOME/paws/v1/$paws_version/$smithy_sha/$service.pm.cache

The file format choice has two reasonable variants:

1. Source-string cache. Capture the three `eval $src` strings
   (service / operations / shape classes) the materialiser builds
   and concatenate them into a single `.pm`-ish file. Subsequent
   processes `do $cache_path` instead of running the materialiser.
2. Sereal-encoded IR cache. Skip JSON parsing on subsequent loads
   by storing the parsed-and-IR-built representation in Sereal.
   Materialiser still runs on each process; saves only JSON
   parse + IR construction, not class building.

Variant 1 is the only one that gets us back to legacy AOT first-call
speed; variant 2 cuts maybe 40-60 ms (the share of cold-fork wall time
spent in JSON parse + IR build, per A6 numbers).

Cache invalidation key components:
- Paws version (so a Paws upgrade rebuilds).
- SHA of the service's `share/smithy/<svc>/<svc>.smithy.json` (so an
  IR refresh rebuilds).
- Materialiser backend (Moo vs Moose).
- Major Perl version (compiled `.pm` is portable across point
  releases but not across minor versions in practice).

## Measurements (without a full implementation)

The post-cache-hit state of A5 variant 1 is, by construction, the same
as the A7 hybrid for any service that has been called once. So the
A5 measurements are:

| State | Cold first-call (S3) | Cold first-call (10 services sum) |
|---|---|---|
| Cache miss (= current on-demand) | 425.8 ms | 4 594 ms |
| Cache hit  (= A7 hybrid hot)     | 180.8 ms | 1 732 ms |

Disk:

| State | share/smithy/ | cache dir (after running through 10 services once) |
|---|---|---|
| Empty  | 164 MB | 0 |
| Warm 10 | 164 MB | ~13 MB (legacy AOT size for those 10 services) |

Net delta vs current on-demand: same install size (cache is empty at
install time); first-call cost is **paid once** per service per cache
generation, then reverts to AOT speed.

## Risks / caveats

- Cache write must be atomic (`tempfile + rename`) and tolerate
  multiple processes racing to populate the same cache entry.
- `do $cache_path` runs arbitrary Perl. The cache directory must be
  user-writable but not group-/world-writable; `Paws.pm` should refuse
  to load cache entries whose owner / mode does not match. This is
  the security gotcha the user flagged.
- A future migration to a different OO backend (Moose <-> Moo)
  invalidates every cache entry. Cache key must include backend.
- Multi-tenant deployments (containers with read-only filesystems
  beyond `/tmp`) need the cache root to be configurable, with a
  graceful fallback to materialise-every-time.

## Why not prototyped end-to-end here

The implementation would touch `Paws::Model::Materializer::Moo` (to
emit the source strings instead of just `eval`-ing them), invent a
cache-key strategy, and add a guarded loader path. That is a real
piece of code to maintain, not an experiment. The measurement we
actually need from this RFC is **what the cache hit and cache miss
cost are** — both are already covered by the A7-hybrid and current-
on-demand benchmarks. Building the wiring would not change those
two numbers.

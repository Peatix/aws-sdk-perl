# Benchmark results

Tracks Paws benchmark numbers across the maintenance-reduction PR series
(see `PLAN.md`-equivalent in the project tracker). Each row is a median
wallclock measurement on the GitHub-hosted `ubuntu-latest` runner, Perl
5.36, with `Paws->default_config->immutable(1)`.

GitHub-hosted runners have noticeable variance: a single benchmark on
the same revision can move ±10-15% between runs without code changes.
The CI gate (`benchmarks/compare`) is informational by default and uses
a 25% tolerance to avoid false positives from runner noise. If we need
tighter signal we will move to a self-hosted runner; that is out of
scope for the test-coverage phase.

## Baselines

The committed `benchmarks/baseline.json` is the canonical machine record;
this file is the human-readable summary. To refresh:

```
benchmarks/run-all --output benchmarks/baseline.json
```

## Current numbers

| benchmark         | description                                         |
|-------------------|-----------------------------------------------------|
| `startup-cold`    | Wallclock of forking a child that does `Paws->new` + `service('DynamoDB')` and exits. Proxy for cold-start cost. |
| `decode-warm-2500`| Decode a 2500-row DynamoDB Query response in an already-warm process. Proxy for response-decoding throughput. |

Numbers are populated from the first CI run on `master` after this
infrastructure lands; the placeholder baseline records nothing.

## Series tracking

Each subsequent PR in the maintenance-reduction series appends a row
here so regressions across the series are visible at review time:

| PR  | Title                                            | startup-cold (s) | decode-warm-2500 (s) | notes |
|-----|--------------------------------------------------|------------------|----------------------|-------|
| -   | baseline (PR7 lands the gate)                    | tbd              | tbd                  | first run on master populates |

Add a row here as part of each PR that changes runtime behaviour
(PR9 onwards). Numbers come from the workflow's `benchmarks-current`
artefact.

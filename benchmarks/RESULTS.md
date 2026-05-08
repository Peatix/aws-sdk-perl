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

The committed `benchmarks/baseline.json` is auto-refreshed by the
`benchmark-capture` workflow on every push to master that produces
numbers outside the 5% tolerance vs the previous baseline. The PR-side
`benchmarks` workflow runs `--strict`, so PRs fail the build on perf
regressions beyond the 25% tolerance.

| PR  | Title                                            | startup-cold (s) | decode-warm-2500 (s) | notes |
|-----|--------------------------------------------------|------------------|----------------------|-------|
| -   | skeleton (stack17)                               | n/a              | n/a                  | first auto-capture lands once stack17 merges |

Manual re-baseline (e.g. after a major refactor):

```
benchmarks/run-all --output benchmarks/baseline.json
git add benchmarks/baseline.json && git commit -m "benchmarks: manual baseline refresh"
```

The auto workflow opens a follow-up PR rather than auto-committing so
every baseline change stays reviewable.

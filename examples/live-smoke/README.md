# Live smoke harness

A manual, create/exercise/teardown smoke test that drives the Paws wire
layer against **real AWS APIs**. It complements the two other smoke
paths in this repo:

| Tool | Network | Purpose |
| --- | --- | --- |
| `t/` (mocked shards) | none | hermetic per-protocol wire-layer unit tests |
| `examples/smoke.pl` | none | post-install: load + construct + prepare-request |
| `examples/live-smoke/` | **live AWS** | flush request-shaping / response-decoding bugs that only appear against a real endpoint |

It is **not** wired into CI: it needs live credentials and creates real
(throwaway) resources.

## What it covers

It deliberately spreads across protocols and serialisation quirks that
the mocked suite under-covers:

| Service | Protocol | Exercises |
| --- | --- | --- |
| S3 | rest-xml | XML body/response, S3 SigV4, pagination, header params, presign (best-effort) |
| DynamoDB | json | recursive `AttributeValue` maps/lists, waiters |
| SQS | json | message-attribute maps |
| CloudWatch | query | flattened member lists + `iso8601` timestamps |
| KMS | json | blob / base64 round-trip (`Encrypt` → `Decrypt`) |
| SSM | json | `SecureString` parameters |
| SecretsManager | json | secret string |
| EC2 | ec2 | the `EC2Caller` + EC2 XML response decode (read-only) |
| Route53 | rest-xml | global-service signing (read-only by default) |
| Firehose | json | blob `Data` (opt-in; heavy IAM + S3 setup) |

Everything it creates is named `paws-smoke-<svc>-<run-id>` and torn down
(LIFO) at the end of each service block, even on failure.

## Prerequisites

1. Runtime cpanfile deps installed and on `PERL5LIB` (e.g.
   `cpanm --installdeps --local-lib local .` then use `local/lib/perl5`,
   or `carton install`).
2. A build of the per-service dists. The dists pull `Paws` (the core
   runtime) from this checkout's `lib/`, so the SDK code under test is
   whatever is in your working tree — build from a checkout that has the
   fixes you want to validate.

```bash
# from the repo root, with runtime deps on PERL5LIB:
examples/live-smoke/build-smoke-lib.sh
```

3. Credentials. Either:
   - set `PAWS_SMOKE_ROLE_ARN` to a role to assume (uses
     `Paws::Credential::AssumeRole`), or
   - leave it unset to use the default provider chain (env vars,
     `~/.aws/credentials`, `~/.aws/config`, instance/container profile).

## Running

```bash
LIB=examples/live-smoke/local/lib/perl5
PERL5LIB="$LIB:$PWD/lib:${PERL5LIB:-}" \
  PAWS_SMOKE_ROLE_ARN=arn:aws:iam::<sandbox-account>:role/cursor-agent/CursorAgentSandbox \
  perl examples/live-smoke/paws-live-smoke.pl
```

It prints a `key=value` line per request (via
`Paws::Net::Interceptor::Log`), a `step=pass|FAIL` line per assertion,
and a final summary; it exits non-zero if any step failed.

### Configuration (environment)

| Variable | Default | Meaning |
| --- | --- | --- |
| `PAWS_SMOKE_ROLE_ARN` | — | role to assume for every call; unset = default chain |
| `PAWS_SMOKE_REGION` | `ap-northeast-1` (or `AWS_REGION`) | region for regional services |
| `PAWS_SMOKE_STS_REGION` | `us-east-1` | region for the AssumeRole STS call |
| `PAWS_SMOKE_SESSION` | `paws-live-smoke` | `RoleSessionName` |
| `PAWS_SMOKE_ONLY` | — | comma-separated service filter, e.g. `S3,DynamoDB` |
| `PAWS_SMOKE_FIREHOSE` | — | `1` to include the slow Firehose block |
| `PAWS_SMOKE_ROUTE53_WRITE` | — | `1` to create+delete a public hosted zone |
| `PAWS_SMOKE_NO_LOG` | — | `1` to silence the Log interceptor |

## Safety

- Targets a throwaway account. The Peatix setup points it at the Sandbox
  account via the `CursorAgentSandbox` role (see
  `peatix/infrastructure`).
- Creates only `paws-smoke-<svc>-<run-id>` resources and deletes them in
  a per-service teardown that runs even when a step fails (and on
  `SIGINT`). If the process is killed hard, sweep leftover
  `paws-smoke-*` resources manually.
- `KMS` keys are scheduled for deletion (7-day window — the minimum);
  they are not destroyed immediately.

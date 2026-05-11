# Testing in Paws

Navigation map for the Paws test suite. Intentionally short — points at
the code rather than duplicating it.

## Where things live

| Path                                  | Purpose                                                                 |
|---------------------------------------|-------------------------------------------------------------------------|
| `t/01_load.t`                         | Preloads every service via `Paws->preload_service`. Catches regressions in the materialised SDK. |
| `t/05_service_calls.t`                | Exercises the call-construction path for representative services.       |
| `t/10_responses.t` + `t/10_responses/`| Real-AWS-like response fixtures (598 files), decoded through the wire layer. |
| `t/11_client_exceptions*.t`           | Exception handling under each HTTP backend (LWP, Furl, HTTPTiny).       |
| `t/12_regions.t`–`t/16_retries.t`     | Endpoint resolution, transport errors, timeouts, retries.               |
| `t/17_s3metadata.t`                   | S3-specific header decoding.                                            |
| `t/18_mocked.t` + `t/18_mocked/`      | Mocked end-to-end calls across many services.                           |
| `t/20_*` … `t/23_*`, `t/29_*`-`t/31_*`| **Synthetic-service response decoding** per protocol family (see below).|
| `t/26_paginators.t`                   | Paginator behaviour (S3-shaped fixtures).                               |
| `t/27_signing_name.t`                 | Signer name resolution.                                                 |
| `t/32_debug_caller.t`                 | `Paws::Net::DebugCaller` request/response YAML capture (see `docs/debug-capture.md`). |
| `t/glacier/`, `t/route53/`, `t/s3/`   | Per-service ad-hoc tests; mostly request-side wire shape.               |
| `t/lib/`                              | Test-only helpers and synthetic services (see below).                   |
| `t/lib/Paws/Test/MaterialiseServices.pm` | Test-only opt-in module that monkey-patches `Paws->load_class` to materialise a missing service from `share/smithy/`. Used by tests that need a real materialised service class. |
| `t/types/`                            | Type-validation, coercion, and edge-case **contract tests**. Pin behaviour without depending on Moose-specific error messages. |
| `t/wire/`                             | Request-side wire-byte fixture tests per protocol caller.               |
| `t/99_pod_syntax.t`                   | POD validity (syntax only — does not assert presence).                  |
| `t/99_pod_presence.t`                 | POD presence: every auto-generated class has `=head1 NAME`; operations also have `=head1 SYNOPSIS`. Author-only. |

## Synthetic services

The `t/20_*` through `t/23_*` and `t/29_*` through `t/31_*` tests don't
talk to AWS. They define small synthetic services under `t/lib/Paws/`
whose shapes exercise the wire layer in isolation. Each test calls a
method with a `response => '...'` parameter and asserts the decoded
Perl object matches expectations.

This is the load-bearing regression gate when refactoring the wire layer.

| Protocol family | Service class                              | Driver                              |
|-----------------|--------------------------------------------|-------------------------------------|
| JSON RPC        | `Paws::JsonParamsService`                  | `t/20_json_syntetic_responses.t`    |
| RestJSON        | `Paws::RestJsonParamsService`              | `t/21_restjson_syntetic_responses.t`|
| Query           | `Paws::QueryParamsService`                 | `t/22_query_syntetic_responses.t`   |
| Query flatten   | `Paws::QueryFlattenedParamsService`        | `t/23_queryflatten_syntetic_responses.t`|
| RestXML         | `Paws::RestXmlParamsService`               | `t/29_restxml_syntetic_responses.t` |
| EC2             | `Paws::EC2ParamsService`                   | `t/30_ec2_syntetic_responses.t`     |
| Glacier         | `Paws::GlacierParamsService`               | `t/31_glacier_syntetic_responses.t` |

## Helpers in `t/lib/`

| File                          | Purpose                                                          |
|-------------------------------|------------------------------------------------------------------|
| `TestGivenResponse.pm`        | Caller that returns a canned response string. Used by 20-23.     |
| `TestRequestCaller.pm`        | Caller that captures the request the SDK would have sent. Used for asserting the request side. |
| `FileCaller.pm`               | Reads canned responses from disk fixtures.                       |
| `TestCaller.pm`, `Test05Caller.pm`, `TestMakerCaller.pm`, `TestMakerLWPCaller.pm`, `TestFromYaml.pm` | Various test-specific callers. |
| `TestSyntheticHttpCaller.pm`  | Caller that exposes the full `send_request` / `caller_to_response` split with a canned APIResponse, for testing wrappers that need both primitives (e.g. `Paws::Net::DebugCaller`). |
| `Test/CustomCredentials.pm`   | A no-op credential class.                                        |
| `Test04/Stub*.pm`             | Stub `LWP::UserAgent`s for the credential-provider tests.        |

## Coverage measurement

`make cover` runs the suite under `Devel::Cover` and writes a report into
`cover_db/`. `make cover-ci` is the CI-friendly version: deterministic
output, tolerates a missing baseline.

The `coverage` GitHub Actions workflow runs `make cover-ci` on each PR,
generates a JSON summary via `script/coverage-summary`, and compares it to
`coverage-baseline.json` via `script/coverage-compare`. The baseline is
populated from the first successful run on `master`.

By default a regression of more than 1.0 percentage point at the top
level fails the build; per-file regressions are reported but advisory.
Pass `--strict` to `coverage-compare` to fail on any drop.

### Scope of `cover-ci`

`cover-ci` measures coverage of `lib/` only — the handwritten core
(callers, signers, SerDes, materialiser, credential providers, etc.).
Generated code and test fixtures are excluded from instrumentation.

## Distribution install smoke

`examples/smoke.pl` is a packaging smoke test: it loads `Paws`,
constructs a service, prepares a representative call via
`Paws::Net::NoResponseMockCaller`, and exits 0 on success.

The `install-smoke` GitHub Actions workflow builds the dist via
`dzil build`, installs the tarball into a fresh `cpanm` local lib
in a `perl:5.36-slim` container, and runs the smoke script.

## Wire-byte fixture tests

`t/wire/` contains request-side fixture tests for each protocol caller.
Each test drives a synthetic-service call through `TestRequestCaller`,
canonicalises the prepared HTTP request, and compares against a
golden file under `t/wire/fixtures/<protocol>/<scenario>.txt`.

Pass `UPDATE_FIXTURES=1` to (re)write the goldens from the captured
requests:

```
UPDATE_FIXTURES=1 prove --lib t/wire/
```

### Canonicalisation rules

Implemented in `t/lib/WireFixture.pm`:

- **Request line**: `<METHOD> <path>?<sorted-querystring>`
- **Headers**: sorted lowercase; one per line; variable headers
  stripped (`authorization`, `date`, `x-amz-date`, `user-agent`,
  `host`, `x-amz-content-sha256`).
- **Blank line separator**.
- **Body**:
  - JSON bodies are re-decoded and re-encoded with sorted keys.
  - Form-urlencoded bodies have their `&`-pairs sorted.
  - Other textual bodies are emitted verbatim.
  - Binary bodies are emitted as `<binary length=N hex=...>`.

## Type contract tests

`t/types/` pins the contract that Paws shape attributes must satisfy,
independent of which OO/type system implements it. These tests:

- only assert that valid values construct and invalid values throw
  (no message-text matching),
- pin specific contract decisions like "Str rejects undef but accepts 0",
- use inline test classes so they don't depend on generated code.

| File                                 | Pins                                                            |
|--------------------------------------|-----------------------------------------------------------------|
| `t/types/01_validation_contract.t`   | `Str`, `Int`, `Bool`, `Num`, `ArrayRef[X]`, `HashRef[X]`, `Maybe[X]`, `required`, `default`, instance-of types. |
| `t/types/02_coercion_contract.t`     | `Base64Attribute` (decoder around accessor), `JSONAttribute` (separate decoder method), `URLJSON` variant. |
| `t/types/03_edge_cases.t`            | undef vs missing, predicate semantics, list mutation isolation, deeply nested round-trip, wrong-nested-type rejection. |

## Running subsets locally

```
# Whole suite
prove --lib --recurse --jobs 2 t/

# One protocol's synthetic-response tests
prove --lib t/20_json_syntetic_responses.t

# One named CI shard (mirrors the GH Actions matrix cells)
script/test-shard responses
script/test-shard --list           # what shards exist
script/test-shard --files mocked   # which files are in this shard

# Coverage
make cover
```

`script/test-shard` is the canonical definition of which `.t` files
belong to which CI shard.

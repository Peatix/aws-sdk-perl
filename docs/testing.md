# Testing in Paws

This document is a navigation map for the Paws test suite. It is intentionally
short and points at the code rather than duplicating it.

## Where things live

| Path                                  | Purpose                                                                 |
|---------------------------------------|-------------------------------------------------------------------------|
| `t/01_load.t`                         | Preloads every service via `Paws->preload_service`. Catches regressions in the generated SDK. |
| `t/05_service_calls.t`                | Exercises the call-construction path for representative services.       |
| `t/10_responses.t` + `t/10_responses/`| Real-AWS-like response fixtures (598 files), decoded through the wire layer. |
| `t/11_client_exceptions*.t`           | Exception handling under each HTTP backend (LWP, Furl, HTTPTiny).       |
| `t/12_regions.t`–`t/16_retries.t`     | Endpoint resolution, transport errors, timeouts, retries.               |
| `t/17_s3metadata.t`                   | S3-specific header decoding.                                            |
| `t/18_mocked.t` + `t/18_mocked/`      | Mocked end-to-end calls across many services.                           |
| `t/20_*` … `t/23_*`, `t/29_*`-`t/31_*`| **Synthetic-service response decoding** per protocol family (see below).|
| `t/26_paginators.t`                   | Paginator behaviour (S3-shaped fixtures).                               |
| `t/27_signing_name.t`                 | Signer name resolution.                                                 |
| `t/glacier/`, `t/route53/`, `t/s3/`   | Per-service ad-hoc tests; mostly request-side wire shape.               |
| `t/lib/`                              | Test-only helpers and synthetic services (see below).                   |
| `t/types/`                            | Type-validation, coercion, and edge-case **contract tests**. Pin behaviour without depending on Moose-specific error messages. |
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

PR3 closed the protocol-family parity gap. PR4 extends each driver
with per-trait request-side wire fixtures.

## Helpers in `t/lib/`

| File                          | Purpose                                                          |
|-------------------------------|------------------------------------------------------------------|
| `TestGivenResponse.pm`        | Caller that returns a canned response string. Used by 20-23.     |
| `TestRequestCaller.pm`        | Caller that captures the request the SDK would have sent. Used for asserting the request side. |
| `FileCaller.pm`               | Reads canned responses from disk fixtures.                       |
| `TestCaller.pm`, `Test05Caller.pm`, `TestMakerCaller.pm`, `TestMakerLWPCaller.pm`, `TestFromYaml.pm` | Various test-specific callers. |
| `Test/CustomCredentials.pm`   | A no-op credential class.                                        |
| `Test04/Stub*.pm`             | Stub `LWP::UserAgent`s for the credential-provider tests.        |

## Coverage measurement

`make cover` runs the suite under `Devel::Cover` and writes a report into
`cover_db/`. `make cover-ci` is the CI-friendly version: deterministic
output, tolerates a missing baseline.

The `coverage` GitHub Actions workflow runs `make cover-ci` on each PR,
generates a JSON summary via `script/coverage-summary`, and compares it to
`coverage-baseline.json` via `script/coverage-compare`. The baseline is
populated from the first successful run on `master` (download the
`coverage-current` artefact, commit as `coverage-baseline.json`).

By default a regression of more than 1.0 percentage point at the top
level fails the build; per-file regressions are reported but advisory.
Pass `--strict` to `coverage-compare` to fail on any drop.

## Distribution install smoke

`examples/smoke.pl` is a packaging smoke test: it loads `Paws`,
constructs a service, prepares a representative call via
`Paws::Net::NoResponseMockCaller`, and exits 0 on success. It uses
no `use lib 'auto-lib'` tricks, so it is suitable for running after
`cpanm Paws-X.YZ.tar.gz` in a fresh environment.

The `install-smoke` GitHub Actions workflow builds the dist via
`dzil build`, installs the tarball into a fresh `cpanm` local lib
in a `perl:5.36-slim` container, and runs the smoke script.

This is the gate that PR10 (lazy default; drop `auto-lib/`) must keep
green: the dist layout will change but the smoke script and its
success criteria stay the same.

## Wire-byte fixture tests

`t/wire/` contains request-side fixture tests for each protocol caller.
Each test drives a synthetic-service call through `TestRequestCaller`,
canonicalises the prepared HTTP request, and compares against a
golden file under `t/wire/fixtures/<protocol>/<scenario>.txt`.

Pass `UPDATE_FIXTURES=1` to (re)write the goldens from the captured
requests:

```
UPDATE_FIXTURES=1 prove --lib -I auto-lib t/wire/
```

### Canonicalisation rules

Implemented in `t/lib/WireFixture.pm`:

- **Request line**: `<METHOD> <path>?<sorted-querystring>`
- **Headers**: sorted lowercase; one per line; the following are
  stripped because they vary per-request and would make every
  fixture flap:
  `authorization`, `date`, `x-amz-date`, `x-amzn-date`,
  `user-agent`, `host`, `x-amz-content-sha256`.
- **Blank line separator**.
- **Body**:
  - `application/x-amz-json-*` and `application/json` bodies are
    re-decoded and re-encoded with sorted keys so Perl hash
    iteration order doesn't make fixtures flap.
  - `application/x-www-form-urlencoded` bodies have their `&`-pairs
    sorted alphabetically.
  - Other textual bodies are emitted verbatim.
  - Binary bodies are emitted as `<binary length=N hex=...>`.

### Coverage

| Protocol  | File                              | Cells covered                                              |
|-----------|-----------------------------------|------------------------------------------------------------|
| JSON-RPC  | `t/wire/json_request.t`           | plain, NameInRequest, primitives mix, list                 |
| RestJSON  | `t/wire/restjson_request.t`       | ParamInURI, ParamInQuery, ParamInHeader, all-locations     |
| Query     | `t/wire/query_request.t`          | plain, NameInRequest, Int, list (member-flattening)        |

Cells **not yet** covered — extension targets for follow-up commits in
PR4 (the plan budgets ~30 fixture files total):

- JSON-RPC: nested structure, map of string, map of structure,
  Base64 attribute, JSON attribute.
- RestJSON: ParamInHeaders prefix, ParamInBody body shape, streaming
  body, AutoInHeader.
- Query: flattened-arrays variant, structure of structure, map.
- RestXML: NameInRequest scalars, ParamInURI, ParamInHeader,
  ParamInQuery, structure rendering, list flattening (both modes).
- EC2: PascalCase upcasing, NameInRequest list, structure, the
  Action/Version auto-injection.
- Glacier: x-amz-glacier-version (already smoked), tree-hash
  injection, account-id defaulting.

The framework (`WireFixture`) is the load-bearing piece; new cells are
just additional `MethodReq` shapes and one fixture file each.

## Type contract tests

`t/types/` pins the contract that Paws shape attributes must satisfy,
*independent of which OO/type system implements it*. Today this contract
is implemented by Moose. PR12/PR13 swap to Moo + Type::Tiny. Type::Tiny's
exception classes and message wording differ from Moose's, so these
tests:

- only assert that valid values construct and invalid values throw
  (no message-text matching),
- pin specific contract decisions like "Str rejects undef but accepts 0",
- use inline test classes so they don't depend on `auto-lib/`.

| File                                 | Pins                                                            |
|--------------------------------------|-----------------------------------------------------------------|
| `t/types/01_validation_contract.t`   | `Str`, `Int`, `Bool`, `Num`, `ArrayRef[X]`, `HashRef[X]`, `Maybe[X]`, `required`, `default`, instance-of types. |
| `t/types/02_coercion_contract.t`     | `Base64Attribute` (decoder around accessor), `JSONAttribute` (separate decoder method), `URLJSON` variant. |
| `t/types/03_edge_cases.t`            | undef vs missing, predicate semantics, list mutation isolation, deeply nested round-trip, wrong-nested-type rejection. |

These tests are the gate that PR12/PR13 must keep green.

## Running subsets locally

```
# Whole suite
prove --lib --recurse --jobs 2 -I auto-lib t/

# One protocol's synthetic-response tests
prove --lib -I auto-lib t/20_json_syntetic_responses.t

# One service's ad-hoc tests
prove --lib -I auto-lib t/route53/

# Coverage
make cover
```

Local test runs require `auto-lib/` to be populated. If the directory is
empty, run `make pull-other-sdks` followed by `make gen-classes` first
(see the README's "Generating API" section).

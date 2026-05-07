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
| `t/20_*` … `t/23_*`                   | **Synthetic-service response decoding** per protocol family (see below).|
| `t/26_paginators.t`                   | Paginator behaviour (S3-shaped fixtures).                               |
| `t/27_signing_name.t`                 | Signer name resolution.                                                 |
| `t/glacier/`, `t/route53/`, `t/s3/`   | Per-service ad-hoc tests; mostly request-side wire shape.               |
| `t/lib/`                              | Test-only helpers and synthetic services (see below).                   |
| `t/99_pod_syntax.t`                   | POD validity (syntax only — does not assert presence).                  |
| `t/99_pod_presence.t`                 | POD presence: every auto-generated class has `=head1 NAME`; operations also have `=head1 SYNOPSIS`. Author-only. |

## Synthetic services

The `t/20_*` through `t/23_*` tests don't talk to AWS. They define small
synthetic services (`Paws::JsonParamsService`, `Paws::QueryParamsService`,
`Paws::QueryFlattenedParamsService`, `Paws::RestJsonParamsService` —
all under `t/lib/Paws/`) whose shapes exercise the wire layer in
isolation. Each test calls a method with a `response => '...'` parameter
and asserts the decoded Perl object matches expectations.

This is the load-bearing regression gate when refactoring the wire layer.
Today it covers four of the six protocol families. Future PRs are expected
to:

- add `Paws::RestXmlParamsService` (the `.pm` skeleton already exists at
  `t/lib/Paws/RestXmlParamsService.pm` but no shape directory or driver),
- add `Paws::EC2ParamsService` for the EC2 protocol variant, and
- add `Paws::GlacierParamsService` for Glacier's quirks.

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

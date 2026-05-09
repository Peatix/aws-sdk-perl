# Vendored Smithy AST fixtures

These three Smithy 2.0 AST files are vendored byte-identical from
[awslabs/aws-sdk-rust](https://github.com/awslabs/aws-sdk-rust)'s
`aws-models/` directory. They drive `t/model/06_smithy_real_e2e.t`,
which exercises the full path:

  real Smithy IR -> Paws::Model::Loader::Smithy
                 -> Paws::Model::IR
                 -> Paws::Model::Materializer::Moo
                 -> wire-layer request preparation
                 -> response decoding

JSON does not allow inline comments, so source attribution lives here
rather than as a header comment inside each file.

## Pin

All three fixtures are pinned to the same upstream commit so that the
fixture set is reproducibly recoverable:

- Upstream repo : <https://github.com/awslabs/aws-sdk-rust>
- Branch        : `main`
- Commit SHA    : `f54bae601506f1bb99c546e75f7c6efd0326e9ec`
- Retrieved on  : 2026-05-09

To reproduce the fixtures byte-identically:

    base="https://raw.githubusercontent.com/awslabs/aws-sdk-rust/f54bae601506f1bb99c546e75f7c6efd0326e9ec/aws-models"
    curl -sSf -o account.smithy.json "$base/account.json"
    curl -sSf -o sts.smithy.json     "$base/sts.json"
    curl -sSf -o health.smithy.json  "$base/health.json"

## Files

| Vendored path                | Upstream path              | sha256 |
|------------------------------|----------------------------|--------|
| `account.smithy.json`        | `aws-models/account.json`  | `5557d42d7abded7daf1006392176388407efd269f3bf06e37d6ed0b8d4fe744e` |
| `sts.smithy.json`            | `aws-models/sts.json`      | `e66a2bc44df9540afe7ed6991b208a0e16c8659309502a385b7d1397f20306bb` |
| `health.smithy.json`         | `aws-models/health.json`   | `cd6e1fb20fe6986808c03260db8ab7bcf1b6f5fef0f2706ad90cf627f9a30142` |

## Why these three?

They mirror the four representative services in
`.github/workflows/regen-byte-identical.yml` (Account, STS, Health,
BackupSearch) minus BackupSearch -- this PR vendors three to keep the
fixture footprint small. They span the protocol families covered by
the loader:

- `account.smithy.json`  -- `aws.protocols#restJson1`. Operations are
  attached via `service.resources[]` (Smithy's resource concept), not
  directly to `service.operations[]`. Stresses the loader's
  resource-aware operation enumeration.

- `sts.smithy.json`      -- `aws.protocols#awsQuery`. Operations omit
  the `smithy.api#http` trait (awsQuery's POST-to-/-with-Action-Version
  convention is the loader's default). Stresses the awsQuery wire
  layer (`Paws::Net::QueryCaller`).

- `health.smithy.json`   -- `aws.protocols#awsJson1_1`. Some operations
  use `smithy.api#Unit` as the input/output target (no payload).
  Stresses Unit-shape handling and `target_prefix` derivation
  (`AWSHealth_20160804` is the local name of the service shape, not
  the `aws.api#service.sdkId` value).

## Refresh

These files are deliberately frozen. Bumping the commit SHA is a
manual step and must be paired with a re-run of
`t/model/06_smithy_real_e2e.t` because the fixture content drives
expected operation / shape counts and response-decoding fixtures in
that file.

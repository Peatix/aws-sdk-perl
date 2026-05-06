# CI workflows

This repository ships three GitHub Actions workflows under `.github/workflows/`:

| Workflow | Trigger | Purpose |
| --- | --- | --- |
| `test.yml` | `pull_request` (filtered to code paths) | Generate the full set of service classes and run the test suite. |
| `generate-and-pr.yml` | `workflow_dispatch` | Pull botocore (optionally), regenerate classes via `make gen-classes`, and open a draft PR with the result. |
| `package.yml` | `workflow_dispatch` and tag pushes | Build a `Paws-*.tar.gz` distribution archive and upload it as a workflow artifact. |

## How `test.yml` runs

The workflow is a thin wrapper around the Makefile:

1. Check out the repo with `submodules: recursive` so `botocore/` is populated.
2. Install perl deps via `carton install`.
3. `make gen-classes-no-doc-fetch` to regenerate every service from `botocore/` source data without performing the slow per-operation HTTP HEAD requests against `docs.aws.amazon.com` that `make gen-classes` does.
4. `make test` to run `prove` over the full `t/` tree.

There is no per-service or per-test list maintained inside the YAML — the canonical sources of truth are:

- the list of services to generate: `Paws::API::Builder::Paws->boto_file_information` (in `builder-lib/`),
- which services to skip: `Paws::API::Builder::Paws->service_skip_list`,
- the list of tests to run: every file under `t/` per the `test` target in `Makefile`.

## Service generation tolerances

For CI to operate without a full `make docu-links` (which hits `docs.aws.amazon.com` per operation per service) or a working `_endpoints.json` file in the upstream botocore submodule, `Paws::API::Builder` falls back gracefully:

- Missing `documentation-1.json` → returns a stub `{ api_url => undef, methods => {} }` with a warning. Generated POD links degrade but the service classes are produced.
- Missing `_endpoints.json` in `botocore/botocore/data/` → falls back to the vendored copy at `etc/_endpoints.json`.
- Missing both → emits no per-service region rules and lets `Paws::API::EndpointResolver` use its built-in default rules.

## Where to look when something breaks

| Symptom | Look at |
| --- | --- |
| New service fails to generate | `Paws::API::Builder` (validation/templates), `Paws::API::Builder::Paws::service_skip_list` |
| `Please help me generate a good name for the paginator FOO` | `Paws::API::Builder::get_paginator_name` |
| `Unrecognized Map type` | the map dispatch in `Paws::API::Builder::process_inner_class` |
| `<Foo/> ... required attribute Cause is missing` | `Paws::Net::XMLResponse::new_from_result_struct` (empty-element handling) |
| Test fixture expectation no longer matches AWS | `t/10_responses/*.response.test.yml` — mark as `todo:` if the upstream shape has drifted since the fixture was recorded |
| Whole-suite generation slow | `MAX_PROCESSES` env var read by `builder-bin/gen_classes.pl` |

## Vendored endpoint metadata

`etc/_endpoints.json` is a snapshot of the legacy `botocore/botocore/data/_endpoints.json` from pplu/botocore commit `ef0baa66` (2015). The upstream file was retired when botocore moved to a partition-based `endpoints.json` format that `Paws::API::RegionBuilder` does not consume. The snapshot encodes the special-case region rules that several `t/12_regions.t` assertions depend on (e.g. `iam`, `route53`, `cloudfront` global hostnames, `s3` us-east-1, `sqs` us-east-1, `elasticmapreduce` per-region prefix). When upstream botocore happens to ship `_endpoints.json` again, the builder still prefers it over the vendored copy.

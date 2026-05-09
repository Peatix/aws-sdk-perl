# Debug capture: recording an AWS request/response cycle

`Paws::Net::DebugCaller` is a transparent caller wrapper that records the
full request/response cycle of one AWS operation into a YAML file. The
intended use is debugging serialisation faults — typically a 400-class
response from AWS where you need to see the exact wire bytes the SDK
sent and the bytes AWS returned in order to reproduce the fault and
write a regression test.

The implementation lives in `lib/Paws/Net/DebugCaller.pm`. The wrapper
composes `Paws::Net::CallerRole` (and reuses `Paws::Net::RetryCallerRole`
for retry semantics), so it is a drop-in replacement anywhere the SDK
accepts a caller — `Paws->service(..., caller => $instance)`,
`Paws->new(config => { caller => $instance })`, etc.

## When to use this

Reach for `DebugCaller` when:

- AWS returns a 400 you don't understand and you want a verbatim record
  of what the SDK sent.
- You are about to write a regression test (`t/10_responses/`,
  `t/lib/Paws/JsonParamsService/`, `t/wire/fixtures/...`) and need a
  faithful starting point.
- You're trying to compare what Paws sends against what
  `aws-cli`/another SDK sends.

For replaying canned responses or building serial-number test
fixtures, `t/lib/TestMakerCaller.pm` and `Paws::Net::MockCaller` are
the older tools — they capture the same shape but are wired into a
test-recording workflow rather than ad-hoc debugging.

## Usage

```perl
use Paws;
use Paws::Net::Caller;
use Paws::Net::DebugCaller;

my $svc = Paws->service('S3',
  caller => Paws::Net::DebugCaller->new(
    wrapped      => Paws::Net::Caller->new,
    capture_path => '/tmp/s3-putobject.yaml',
  ),
);

$svc->PutObject(Bucket => 'b', Key => 'k', Body => $bytes);
# /tmp/s3-putobject.yaml now contains the full record.
```

`capture_path` resolution order on every `do_call`:

1. `$ENV{PAWS_DEBUG_CAPTURE_PATH}` — set this to override the path
   without touching code, e.g. when running `bin/paws` or a script.
2. The constructor `capture_path` argument.
3. `paws-debug-<UTC-timestamp>-<service>-<op>.yaml` in the current
   directory.

There is **no per-call override**. A per-operation path would require
threading an extra parameter through every operation method's
signature, which is invasive for marginal value. If you need
per-operation paths, set `PAWS_DEBUG_CAPTURE_PATH` between calls or
construct a fresh wrapper per call.

## Concurrency and overwrite semantics

The caller is per-service-instance. Multiple operations on the same
service instance will:

- each produce their own YAML if `capture_path` is unset (each call
  gets a uniquely-named auto file).
- **overwrite** the same file if `capture_path` is set — last call
  wins. The wrapper does NOT silently append.
- overwrite once per retry attempt if the wrapped caller's request
  retries via `Paws::Net::RetryCallerRole`. The last (final) attempt
  wins.

## Wrapped caller contract

`DebugCaller` requires the wrapped caller to expose `send_request` and
`caller_to_response` (in addition to `do_call`). The standard
production callers all qualify — `Paws::Net::Caller` (default),
`Paws::Net::LWPCaller`, `Paws::Net::FurlCaller`, and
`Paws::Net::MockCaller` all compose `Paws::Net::RetryCallerRole`,
which provides this split.

`Paws::Net::MojoAsyncCaller` (Future-returning, no `RetryCallerRole`)
is **not supported** — its async control flow does not fit the
`send_request`/`caller_to_response` synchronous split.

## YAML shape

A small example, captured by driving the synthetic `JsonParamsService`
through a `TestSyntheticHttpCaller` (real S3/EC2/etc. captures look
the same shape; the values just differ):

```yaml
---
operation: jsonparams / Method1
outcome: success
timestamp: 2026-05-09T17:21:08Z
duration_ms: 0.341
arguments:
  dup_requestid: 0
  response: '{"StringAttribute":"hi","IntegerAttribute":42}'
  status: 200
request:
  method: POST
  url: https://jsonparams.us-east-1.amazonaws.com/
  uri: /
  parameters:
    AWSAccessKeyId: CustomAK
    Action: Method1
    Timestamp: 2026-05-09T17:21:08Z
    Version: 2016-09-25
  headers:
    Authorization: <REDACTED>
    Content-Type: application/x-amz-json-1.1
    Date: 20260509T172108Z
    Host: jsonparams.us-east-1.amazonaws.com
    X-Amz-Content-Sha256: 7926b8823f09165092bc5acf2233ed1948a354e0cf89d85c046bcd48fd01edfd
    X-Amz-Date: 20260509T172108Z
    X-Amz-Target: JsonParams.Method1
  body: '{"status":200,"response":"{\"StringAttribute\":\"hi\",\"IntegerAttribute\":42}","dup_requestid":false}'
response:
  status: 200
  headers:
    x-amz-request-id: fake-uuid
    x-amzn-requestid: fake-uuid
  body: '{"StringAttribute":"hi","IntegerAttribute":42}'
metadata:
  sdk_version: '0.46'
  perl_version: 5.34.1
  service_class: Paws::JsonParamsService
  caller_class: TestSyntheticHttpCaller
  region: us-east-1
  endpoint: https://jsonparams.us-east-1.amazonaws.com
  api_version: '2016-09-25'
```

Real production services additionally carry `metadata.signing_name`
(e.g. `s3`, `ec2`, `iot`); the synthetic test service above doesn't
define one so it's omitted.

Top-level fields:

- `operation` — `<service-prefix> / <ApiCallName>`, e.g. `s3 / PutObject`.
- `outcome` — `success` (HTTP 2xx) or `error` (everything else).
  Both outcomes are recorded; the field is for fast scanning when
  collecting many YAMLs.
- `timestamp` — UTC ISO8601 of when the response was captured.
- `duration_ms` — wall time of the wrapped caller's `send_request`,
  in milliseconds.
- `arguments` — the user-supplied params dict to the call (same shape
  as `Paws->to_hash($call_object)`). Underscore-prefixed SDK
  internals (`_api_call`, `_returns`, ...) are excluded by `to_hash`.
- `request` — the prepared HTTP request: `method`, `url`, `uri`,
  `parameters`, `headers` (with redactions, see below), `body`.
- `response` — the raw HTTP response: `status`, `headers`, `body`.
  Headers are NOT redacted (they're informational from AWS).
- `metadata` — SDK version, Perl version, service class, caller
  class of the **wrapped** caller, region, endpoint, signing name,
  API version. Useful for reproducing the call.

### Body encoding

Request and response bodies, plus any string leaf in `arguments`, go
through the same encoder:

- Empty string stays empty string. `undef` stays `undef`.
- Short text (valid UTF-8, no NUL bytes, in-budget) is emitted as a
  plain YAML scalar — see `request.body` and `response.body` in the
  example above.
- Long text is truncated at the byte limit and wrapped in a small
  hash so the truncation is visible:

  ```yaml
  body:
    encoding: utf-8
    original_length: 4096
    truncated: 1
    text: 'xxxxxxxxxxxxxxxxxxxx ... (first 1024 bytes)'
  ```

- Binary bodies (containing NUL or invalid UTF-8) are always wrapped,
  truncated to the byte limit if oversized, and base64-encoded:

  ```yaml
  body:
    encoding: base64
    original_length: 6
    truncated: 0
    base64: AP8QIICB
  ```

The 1 KiB cap is the constructor default and tunable per-instance:

```perl
Paws::Net::DebugCaller->new(
  wrapped         => $caller,
  capture_path    => $path,
  body_byte_limit => 16384,
);
```

## Privacy considerations

What `DebugCaller` does to keep the YAML safe to share:

- **Request headers** matching `/^authorization$/i` or `/token/i` are
  replaced with `<REDACTED>`. This catches the SigV4 `Authorization`
  signature, `X-Amz-Security-Token`, and any `X-Aws-Session-Token`
  variant.
- **Credential material never reaches `arguments`** — the access key
  and secret live on the `Paws::Credential` provider, not on the
  call object passed to operations.
- **Bodies are byte-capped** at 1 KiB by default so megabyte-sized
  uploads don't end up in YAMLs.

What `DebugCaller` does **not** do:

- Response headers are not redacted. AWS may include identifiers like
  `x-amz-request-id` that you should redact before publishing.
- Request `parameters` and `body` are recorded verbatim (modulo the
  body cap). If you put PII in your call args, it will appear here.
- The signed URL is recorded as-is. For S3 presigned URL scenarios,
  the signature is part of the URL query string, not the
  `Authorization` header — check `request.url` before publishing.

Treat the captured YAML as sensitive material. Redact further before
attaching to a public bug report.

## Turning a captured YAML into a regression test

The synthetic-service fixtures under `t/lib/Paws/JsonParamsService/`
are the model for narrow protocol/wire tests. The flow:

1. Capture the failing call into a YAML with `DebugCaller`.
2. Identify which protocol the service uses
   (`Paws::Net::JsonCaller`, `RestJsonCaller`, `QueryCaller`,
   `RestXmlCaller`, `EC2Caller`, `GlacierCaller`).
3. If the bug is in **request encoding**, add a cell to the
   relevant `t/wire/<protocol>_request.t` plus a fixture under
   `t/wire/fixtures/<protocol>/`. See `docs/testing.md` for the
   canonicalisation rules and how to add cells. The captured
   `request.body` and `request.headers` are the seeds.
4. If the bug is in **response decoding**, add a case to the
   relevant `t/2{0..3}_*.t` or `t/2{9}_*.t` /
   `t/3{0,1}_*.t` synthetic-response driver. The captured
   `response.body` and `response.status` are the seeds. Use
   `t/lib/TestGivenResponse.pm` as the canned-response caller.
5. If the bug is end-to-end, the response-fixture-based tests
   under `t/10_responses/` are the heavyweight model.

The maintainer-recording workflow used for those fixtures lives in
`script/paws_make_testcase` plus `t/lib/TestMakerCaller.pm` and
`t/lib/TestMakerLWPCaller.pm` — see those for the recording shape and
flow.

## Limitations / future work

- No CLI integration. Adding a `--debug-capture` flag to `bin/paws`
  is a small follow-up if the maintainer wants it.
- No per-call override path. See "Usage" above.
- `MojoAsyncCaller` is unsupported. Future async support would require
  a Future-returning variant of the wrapper.

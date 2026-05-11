# Migrating from Net::Amazon::S3 to Paws::S3

This guide walks an existing `Net::Amazon::S3` (or
`Net::Amazon::S3::Client`) caller through swapping the SDK out for
`Paws::S3`. It covers the install pattern under Paws's modular
1.0.0 layout, the differences in the API surface, and a
method-by-method mapping with worked examples.

`Net::Amazon::S3` has done long service in Perl shops as the
S3-only SDK. `Paws::S3` is one slice of a multi-service SDK; the
benefit is consolidating *every* AWS service your codebase touches
on one wire layer + credential chain + retry policy + paginator
framework, instead of one library per service.

## 1. Install pattern

### Old: monolithic install

```sh
cpanm Net::Amazon::S3
```

### New: Paws::Core plus the per-service sub-dist

Paws@1.0.0 ships as a modular distribution under the
[A4-B plan](distribution-plan-a4b.md). Install the slim core plus
the per-service tarball for each AWS service your code uses.

```sh
cpanm \
  https://github.com/Peatix/aws-sdk-perl/releases/download/v1.0.0/Paws-Core-1.0.0.tar.gz \
  https://github.com/Peatix/aws-sdk-perl/releases/download/v1.0.0/Paws-S3-1.0.0.tar.gz
```

For reproducible installs via `cpanfile`:

```perl
# cpanfile
my $V    = '1.0.0';
my $base = "https://github.com/Peatix/aws-sdk-perl/releases/download";

requires 'Paws',     url => "$base/v$V/Paws-Core-$V.tar.gz";
requires 'Paws::S3', url => "$base/v$V/Paws-S3-$V.tar.gz";

# Optional: per-shape POD pages (`perldoc Paws::S3::CreateBucket`)
requires 'Paws::S3::Docs', url => "$base/v$V/Paws-S3-Docs-$V.tar.gz";
```

If you have an existing `cpanfile` from a monolithic `Paws@1.00`
install, run `bin/paws-migrate-cpanfile` once to convert it to the
modular pattern.

Asking for an uninstalled service is a deliberate load-time
failure:

```sh
$ perl -MPaws -e 'Paws->service("EC2")'
Can't locate Paws/EC2.pm in @INC (you may need to install
the Paws::EC2 module) at ...
```

Install `Paws-EC2` to fix the error. This matches the JS-SDK-v3
"install what you call" model.

## 2. Mental model differences

| Net::Amazon::S3 | Paws::S3 |
| --- | --- |
| `$s3 = Net::Amazon::S3->new({access_key, secret_key, ...})` | `$paws = Paws->new(config => { ... }); $s3 = $paws->service('S3', region => '...')` |
| `$bucket = $s3->bucket($name)` (per-bucket proxy object) | Pass `Bucket => $name` directly to per-operation methods. No proxy. |
| `$bucket->add_key($key, $value, \%conf)` | `$s3->PutObject(Bucket => $name, Key => $key, Body => $value, %conf)` |
| Error: `$s3->errstr` / `$s3->err` / `confess`-style helper | `Paws::Exception` thrown from each call; catch via `eval { ... }; if ($@) { my $ex = $@; ... }` |
| Body: scalar / IO::Handle / filename | Body: scalar (decoded bytes). Multipart upload for large files via `CreateMultipartUpload` / `UploadPart` / `CompleteMultipartUpload`. |
| `$bucket->query_string_authentication_uri(...)` | `$s3->presign($op, \%args, expires_in => N)` |
| Async via custom hooks | `Paws::Net::MojoAsyncCaller` (in Paws::Core) |

## 3. Constructing the client

### Static credentials

```perl
# Net::Amazon::S3
my $s3 = Net::Amazon::S3->new({
    aws_access_key_id     => $ENV{AWS_ACCESS_KEY_ID},
    aws_secret_access_key => $ENV{AWS_SECRET_ACCESS_KEY},
});

# Paws::S3 — explicit credentials
my $paws = Paws->new(config => {
    credentials => Paws::Credential::Explicit->new(
        access_key => $ENV{AWS_ACCESS_KEY_ID},
        secret_key => $ENV{AWS_SECRET_ACCESS_KEY},
    ),
});
my $s3 = $paws->service('S3', region => 'eu-west-1');
```

### IAM role / instance profile / env-only

`Net::Amazon::S3`'s `use_iam_role => 1` becomes Paws's default
credential provider chain: env vars → `~/.aws/credentials` →
ECS task role → EC2 instance metadata.

```perl
my $paws = Paws->new;   # default ProviderChain
my $s3   = $paws->service('S3', region => 'eu-west-1');
```

### MinIO / DigitalOcean Spaces / R2

```perl
# Net::Amazon::S3
my $s3 = Net::Amazon::S3->new({
    host                  => 'minio.local:9000',
    secure                => 0,
    aws_access_key_id     => 'minioadmin',
    aws_secret_access_key => 'minioadmin',
});

# Paws::S3
my $paws = Paws->new(config => {
    credentials => Paws::Credential::Explicit->new(
        access_key => 'minioadmin',
        secret_key => 'minioadmin',
    ),
});
my $s3 = $paws->service('S3',
    region   => 'us-east-1',
    endpoint => 'http://minio.local:9000',
);
```

## 4. Method-by-method mapping

`B` in the table is the bucket-name string. `K` is the object key
string. `V` is the body bytes scalar.

| Net::Amazon::S3 | Paws::S3 | Notes |
| --- | --- | --- |
| `$s3->buckets` / `$s3->list_bucket_all` | `$s3->ListBuckets` | Paginator: `$s3->ListAllBuckets` *(paginator helpers land in a follow-up; until then loop with the `ContinuationToken` from the response)* |
| `$s3->add_bucket({bucket => B})` | `$s3->CreateBucket(Bucket => B)` | Include `CreateBucketConfiguration => { LocationConstraint => $region }` for non-us-east-1 regions |
| `$s3->delete_bucket({bucket => B})` | `$s3->DeleteBucket(Bucket => B)` | |
| `$s3->bucket(B)->add_key(K, V, \%conf)` | `$s3->PutObject(Bucket => B, Key => K, Body => V, %conf)` | `content_type`, `acl_short`, custom `x-amz-meta-*` map onto `ContentType`, `ACL`, `Metadata => { foo => 'bar' }` |
| `$bucket->add_key_filename(K, $path)` | `$s3->PutObject(Body => Path::Tiny->new($path)->slurp_raw, ...)` | For files > 5 MB, use `CreateMultipartUpload` + `UploadPart` (the materialised PutObject's Body is a scalar slurped into memory). |
| `$bucket->get_key(K)` | `$s3->GetObject(Bucket => B, Key => K)` | Returns `Paws::S3::GetObjectOutput`; access `Body`, `ContentType`, `ETag`, `Metadata->Map`, etc. |
| `$bucket->head_key(K)` | `$s3->HeadObject(Bucket => B, Key => K)` | Returns `Paws::S3::HeadObjectOutput`; all members are bound to response headers. |
| `$bucket->delete_key(K)` | `$s3->DeleteObject(Bucket => B, Key => K)` | |
| `$bucket->list({prefix, max_keys, marker, delimiter})` | `$s3->ListObjects(Bucket => B, Prefix => ..., MaxKeys => ..., Marker => ..., Delimiter => ...)` | V1 list. |
| `$bucket->list_v2({...})` | `$s3->ListObjectsV2(Bucket => B, ContinuationToken => ..., ...)` | V2 list. Preferred. |
| `$bucket->copy_key(K, "/srcB/srcK", \%conf)` | `$s3->CopyObject(Bucket => B, Key => K, CopySource => "srcB/srcK", %conf)` | `CopySource` is `<bucket>/<url-encoded-key>` |
| `$bucket->get_acl(K)` / `set_acl(K, ...)` | `$s3->GetObjectAcl(Bucket => B, Key => K)` / `$s3->PutObjectAcl(Bucket, Key, ACL => 'private', ...)` | Same for bucket ACLs: `GetBucketAcl` / `PutBucketAcl`. |
| `$bucket->get_location_constraint` | `$s3->GetBucketLocation(Bucket => B)` | |
| `Net::Amazon::S3::Client::Object`'s multipart family (`initiate_multipart_upload` / `put_part` / `complete_multipart_upload` / `abort_multipart_upload`) | `$s3->CreateMultipartUpload` → `$s3->UploadPart` → `$s3->CompleteMultipartUpload` / `$s3->AbortMultipartUpload` | See `t/s3/multipartupload.t` for a worked example. |
| `$bucket->query_string_authentication_uri(...)` | `$s3->presign($op, \%args, expires_in => N)` | Generic: works for any V4-signed operation. See `t/s3/presign.t`. |

## 5. Worked examples

### List buckets

```perl
# Net::Amazon::S3
for my $b (@{ $s3->buckets->{buckets} }) {
    say $b->bucket;
}

# Paws::S3
my $out = $s3->ListBuckets;
for my $b (@{ $out->Buckets }) {
    say $b->Name;
}
```

### Upload an object with metadata + content-type

```perl
# Net::Amazon::S3
$bucket->add_key($key, $bytes, {
    content_type     => 'image/png',
    'x-amz-meta-app' => 'imageproc',
});

# Paws::S3
$s3->PutObject(
    Bucket      => $bucket_name,
    Key         => $key,
    Body        => $bytes,
    ContentType => 'image/png',
    Metadata    => { app => 'imageproc' },
);
```

### Download an object

```perl
# Net::Amazon::S3
my $value = $bucket->get_key($key)->{value};

# Paws::S3
my $value = $s3->GetObject(Bucket => $bucket_name, Key => $key)->Body;
```

### Server-side copy

```perl
# Net::Amazon::S3
$dst_bucket->copy_key($dst_key, "/${src_bucket_name}/${src_key}");

# Paws::S3
$s3->CopyObject(
    Bucket     => $dst_bucket_name,
    Key        => $dst_key,
    CopySource => "${src_bucket_name}/" . URI::Escape::uri_escape_utf8($src_key, q[^A-Za-z0-9\-_.~/]),
);
```

### Paginate keys

```perl
# Net::Amazon::S3
my $next;
do {
    my $page = $bucket->list_v2({
        prefix             => 'photos/',
        continuation_token => $next,
    });
    say $_->{key} for @{ $page->{keys} };
    $next = $page->{next_continuation_token};
} while ($next);

# Paws::S3 (manual continuation; paginator helper lands in a follow-up)
my $token;
do {
    my $page = $s3->ListObjectsV2(
        Bucket            => $bucket_name,
        Prefix            => 'photos/',
        ContinuationToken => $token,
    );
    say $_->Key for @{ $page->Contents // [] };
    $token = $page->NextContinuationToken;
} while ($token);
```

### Error handling

```perl
# Net::Amazon::S3
my $val = $bucket->get_key($key);
if (!defined $val && $s3->err) {
    warn "S3 ", $s3->err, ": ", $s3->errstr;
}

# Paws::S3
my $val = eval { $s3->GetObject(Bucket => $b, Key => $key)->Body };
if (my $ex = $@) {
    if (ref($ex) && $ex->isa('Paws::Exception')) {
        warn "S3 ", $ex->code, " (", $ex->http_status, "): ",
             $ex->message, " request_id=", $ex->request_id;
    } else {
        die $ex;
    }
}
```

### Pre-signed URLs

```perl
# Net::Amazon::S3
my $url = $bucket->query_string_authentication_uri({
    key     => $key,
    expires => time + 3600,
});

# Paws::S3
my $url = $s3->presign('GetObject',
    { Bucket => $bucket_name, Key => $key },
    expires_in => 3600,
);
```

`presign` works for any V4-signed S3 operation
(`GetObject` / `PutObject` / `HeadObject` / etc.). It does not
hit the network. The returned URL is shareable; an HTTP GET (or
PUT for a `PutObject` presign) within the expiry window
authenticates against AWS without an `Authorization` header.

### Multipart upload (large file)

```perl
# Paws::S3
my $key = 'big.bin';
my $upload = $s3->CreateMultipartUpload(Bucket => $b, Key => $key);

my @parts;
open my $fh, '<:raw', $local_path or die $!;
my $part_no = 1;
while (read $fh, my $chunk, 5 * 1024 * 1024) {
    my $r = $s3->UploadPart(
        Bucket     => $b,
        Key        => $key,
        UploadId   => $upload->UploadId,
        PartNumber => $part_no,
        Body       => $chunk,
    );
    push @parts, { ETag => $r->ETag, PartNumber => $part_no };
    $part_no++;
}

$s3->CompleteMultipartUpload(
    Bucket          => $b,
    Key             => $key,
    UploadId        => $upload->UploadId,
    MultipartUpload => { Parts => \@parts },
);
```

## 6. Known gaps after this migration

* **Streaming uploads** — `PutObject->Body` is a scalar slurped
  into memory. For files larger than the available RSS, use
  multipart upload (above). A streaming-body extension is on the
  roadmap; the materialiser already emits `_stream_param` for
  PutObject / UploadPart so the wire layer's streaming path is
  ready, but `Body` is still typed as `Maybe[Str]` (not a
  filehandle / iterator).

* **Content-Length auto-injection** — `t/s3/content_headers.t`'s
  `Content-Length` block is still `TODO`. Some PUT operations
  rely on `Content-Length` being injected explicitly; today
  Paws::Core lets the underlying HTTP transport set it. Follow-up.

* **Paginator helpers** (`ListAllObjects`, `ListAllObjectsV2`,
  `ListAllBuckets`, etc.) are not yet materialised — see the
  `skip_all` in `t/26_paginators.t`. Pagination works manually
  via the response's `NextContinuationToken` / `Marker` /
  `NextToken` field.

* **Header-only `Metadata` map** — `HeadObject->Metadata` and
  `GetObject->Metadata` need a wrapper class that the materialiser
  doesn't yet emit. Tracked alongside `t/17_s3metadata.t`'s
  skip-all; the rest of `GetObject` / `HeadObject` works.

* **GetBucketLocation / GetBucketPolicy** response decoding —
  the wire layer doesn't yet bind XML-root-as-content (Location)
  or raw `httpPayload`-string bodies (Policy) to the output
  member. Tracked behind `todo:` markers on the corresponding
  `t/10_responses/s3-*.test.yml` files.

## 7. Pointers

* `lib/Paws/Net/V4Signature.pm` — SigV4 signer (every S3 op uses it).
* `lib/Paws/Net/RestXmlCaller.pm` — REST-XML request shaping.
* `lib/Paws/Net/RestXMLResponse.pm` — REST-XML response decoding.
* `lib/Paws/API/Caller.pm` — `presign`, `new_with_coercions`,
  `to_hash`, `response_to_object`.
* `lib/Paws/Net/S3Signature.pm` — legacy S3-specific signer
  (deprecated; the materialiser composes V4Signature directly).
* `lib/Paws/Net/S3APIRequest.pm` — S3-specific request object
  carrying `bucket_name` / `date` / `content_length` accessors.
* `t/s3/` — request-side coverage:
  `signature.t` (V4 contract), `presign.t` (presigned URLs),
  `streaming_put_object.t` (raw-body PutObject), `xml_creation.t`
  (xmlns wrapping), `content_headers.t` (auto MD5),
  `uri_encoding.t` / `uri_other_chars.t` / `uri_avoid_chars.t` /
  `prefix.t` (URL encoding), `multipartupload.t` /
  `selectcontent.t` (mocked end-to-end).
* `t/10_responses/s3-*` — response-decoding fixtures, real-AWS-
  shaped XML bodies and headers.
* `docs/architecture.md` — Paws's materialiser-first model.
* `docs/distribution-plan-a4b.md` — 1.0.0 install pattern.
* `docs/loaders.md` — Smithy IR source-of-truth.

# Paws — AWS SDK for Perl (Peatix fork)

A modular, per-service distribution of the [Paws](https://github.com/pplu/aws-sdk-perl)
AWS SDK for Perl, maintained by [Peatix](https://github.com/Peatix/aws-sdk-perl).

Paws provides Perl bindings for AWS APIs. Service classes are generated from
the upstream AWS service models, and each service ships as its own installable
distribution (`Paws-S3`, `Paws-EC2`, …). You install only the services your
project uses; `Paws::Core` provides the shared runtime (wire layer, signers,
credential providers).

This fork diverges from the upstream `Pplu/Paws` (CPAN `Paws@0.46`) in two
major ways:

1. **Modular packaging** — ~304 per-service distributions instead of one
   monolithic tarball.
2. **GitHub Releases as the distribution channel** — tarballs are attached to
   tagged releases rather than published to CPAN (the `Paws` PAUSE namespace
   belongs to upstream).

## Installation

Add the services you need to your `cpanfile`:

```perl
my $V    = '1.0.0';
my $base = "https://github.com/Peatix/aws-sdk-perl/releases/download/v$V";

requires 'Paws', url => "$base/Paws-Core-$V.tar.gz";
requires 'Paws::S3', url => "$base/Paws-S3-$V.tar.gz";
requires 'Paws::SQS', url => "$base/Paws-SQS-$V.tar.gz";
```

Then install with `cpanm` or `carton`:

```bash
cpanm --installdeps .
# or
carton install
```

For one-shot installs without a cpanfile:

```bash
cpanm \
  https://github.com/Peatix/aws-sdk-perl/releases/download/v1.0.0/Paws-Core-1.0.0.tar.gz \
  https://github.com/Peatix/aws-sdk-perl/releases/download/v1.0.0/Paws-S3-1.0.0.tar.gz
```

See [docs/install.md](docs/install.md) for full installation and upgrade
instructions covering fresh installs, upgrades from upstream `Paws@0.46`, and
upgrades from earlier Peatix release candidates.

## Quick start

```perl
use Paws;

my $paws = Paws->new(config => { region => 'ap-northeast-1' });

my $s3  = $paws->service('S3');
my $res = $s3->ListBuckets;

for my $bucket (@{ $res->Buckets }) {
    print $bucket->Name, "\n";
}
```

Credentials are resolved automatically via the standard provider chain
(environment variables, `~/.aws/credentials`, EC2/ECS instance profile). See
`perldoc Paws` for configuration options.

## Migrating from upstream Pplu/Paws

If your project currently uses the upstream monolithic `Paws` (CPAN `Paws@0.46`
or the pre-modular Peatix builds), you need to switch to per-service
dependencies.

### 1. Detect which services your code uses

```bash
bin/paws-migrate-cpanfile --root /path/to/your/project
```

The tool scans `.pl`, `.pm`, `.psgi`, and `.t` files for
`Paws->service('...')`, `use Paws::...`, and `Paws->load_class('Paws::...')`
calls, then prints a cpanfile snippet to stdout:

```perl
my $V    = '1.0.0';
my $base = "https://github.com/Peatix/aws-sdk-perl/releases/download/v$V";

requires 'Paws', url => "$base/Paws-Core-$V.tar.gz";

# Services detected in the source tree:
requires 'Paws::EC2', url => "$base/Paws-EC2-$V.tar.gz";
requires 'Paws::S3', url => "$base/Paws-S3-$V.tar.gz";
requires 'Paws::SQS', url => "$base/Paws-SQS-$V.tar.gz";
```

### 2. Replace old Paws dependencies in your cpanfile

Remove any `requires 'Paws'` line that points to CPAN or an old tarball. Paste
the output from step 1 into your cpanfile (or use `--output cpanfile.paws` to
write it directly, then merge).

### 3. Install and smoke-test

```bash
cpanm --installdeps .

perl -e '
  use Paws;
  use Paws::Net::NoResponseMockCaller;
  use Paws::Credential::Explicit;
  my $p = Paws->new(config => {
    caller      => Paws::Net::NoResponseMockCaller->new,
    credentials => Paws::Credential::Explicit->new(
      access_key => "test", secret_key => "test",
    ),
    region => "us-east-1",
  });
  $p->service("S3");
  print "ok\n";
'
```

If the script prints `ok`, the core runtime and your service dependencies are
installed correctly.

> **Note:** `paws-migrate-cpanfile` matches string-literal service names only.
> If your code dispatches dynamically (e.g. `Paws->service($var)`), add those
> services by hand.

## Available services

~304 AWS services are available as individual `Paws-<Service>` distributions.
Each release tag on GitHub attaches the full set of tarballs. Optional
`Paws-<Service>-Docs` companion distributions provide `perldoc`-accessible
POD for each service's operations and shapes.

Browse the assets on the
[latest release](https://github.com/Peatix/aws-sdk-perl/releases) to see the
full list.

## Contributing / Development

Clone the repository and install dev dependencies:

```bash
git clone https://github.com/Peatix/aws-sdk-perl.git
cd aws-sdk-perl
carton install
```

Key directories:

- `lib/` — core runtime (`Paws.pm`, wire layer, credential providers, signers)
- `auto-lib/` — AOT-generated service classes (regenerated via `make gen-classes`)
- `builder-lib/` — code generator that converts botocore definitions into Perl classes
- `script/` — build and CI helper scripts
- `docs/` — architecture, CI, and distribution documentation

See [docs/ci.md](docs/ci.md) for a guide to the CI workflows and how the test
pipeline is structured.

## License

This code is distributed under the [Apache License 2.0](LICENSE).

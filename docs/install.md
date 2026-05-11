# Installation guide

This document covers four scenarios for installing Paws from the Peatix fork.
All distributions are hosted as tarballs on
[GitHub Releases](https://github.com/Peatix/aws-sdk-perl/releases) — not on
CPAN (the `Paws` PAUSE namespace belongs to the upstream `Pplu/Paws` project).

> **Note:** The tarball URLs below reference the `v1.0.0` release tag. These
> will resolve once that release is published. Track progress on the
> [releases page](https://github.com/Peatix/aws-sdk-perl/releases).

Supported install tools: `cpanm` (App::cpanminus), `carton`, and `cpm`
(App::cpm). All three support URL-based `requires` in cpanfiles. The legacy
`CPAN.pm` shell does not support URL sources.

## Prerequisites

- Perl 5.12.1 or later
- A C compiler and these system libraries (for XS dependencies):

  | OS | Packages |
  | --- | --- |
  | Debian / Ubuntu | `libxml2-dev libssl-dev` |
  | Red Hat / CentOS | `libxml2-devel openssl-devel` |
  | macOS (Homebrew) | `brew install openssl` |

---

## 1. Brand-new install (no prior Paws)

Start from a fresh project with no existing Paws dependency.

### Step 1 — Choose your services

Identify which AWS services your code calls. Each service has its own
distribution (`Paws-S3`, `Paws-EC2`, etc.) plus a shared runtime (`Paws-Core`).

### Step 2 — Add to cpanfile

```perl
my $V    = '1.0.0';
my $base = "https://github.com/Peatix/aws-sdk-perl/releases/download/v$V";

requires 'Paws', url => "$base/Paws-Core-$V.tar.gz";
requires 'Paws::S3', url => "$base/Paws-S3-$V.tar.gz";
requires 'Paws::SQS', url => "$base/Paws-SQS-$V.tar.gz";
```

Bump `$V` when upgrading; every tarball URL updates automatically.

### Step 3 — Install

```bash
cpanm --installdeps .
# or
carton install
```

### Step 4 — Verify

```bash
perl -MPaws -e 'print "Paws loaded ok\n"'
```

---

## 2. Upgrading from upstream Paws@0.46 (Pplu/Paws on CPAN)

The upstream monolithic `Paws` installs every AWS service class in one
~166 MB distribution. This fork replaces that with per-service distributions.

### What changes

| Before | After |
| --- | --- |
| `cpanm Paws` installs everything | Install only the services you use |
| `Paws->service('Anything')` always works | Calling an uninstalled service is a load-time error (`Can't locate Paws/<Svc>.pm in @INC`) |
| ~166 MB installed | ~1.7 MB core + per-service (50 KB–6 MB each) |
| `perldoc Paws::S3::CreateBucket` works | Requires the optional `Paws-S3-Docs` companion |

### What may break

- **Missing service classes.** Any `Paws->service('X')` call where `Paws-X`
  isn't installed will die at load time.
- **Internal API changes.** The wire layer and signer internals have been
  refactored since `0.46`. Code that reaches into `Paws::Net::*` or
  `Paws::API::*` internals may need adjustment.

### Migration steps

1. **Scan your codebase:**

   ```bash
   bin/paws-migrate-cpanfile --root /path/to/your/project
   ```

   This prints a cpanfile snippet listing every service detected in your
   source files.

2. **Replace old dependencies.** Remove the old `requires 'Paws'` line from
   your cpanfile and paste in the output from step 1. If you were installing
   via `cpanm Paws` directly, switch to the cpanfile approach — it makes
   version bumps a single-variable change.

3. **Uninstall the old Paws** (optional but recommended to avoid confusion):

   ```bash
   cpanm --uninstall Paws
   ```

4. **Install the new dependencies:**

   ```bash
   cpanm --installdeps .
   ```

5. **Run your test suite.** Any `Can't locate Paws/<Svc>.pm` error means a
   service is missing from your cpanfile — add it.

> **Note:** `paws-migrate-cpanfile` matches string-literal service names only.
> Dynamic dispatch like `Paws->service($variable)` is not detected; add those
> services manually.

---

## 3. Upgrading from Peatix Paws@1.0.0-rc1

`v1.0.0-rc1` was the first modular release candidate from the Peatix fork. If
you are already on rc1, upgrading is straightforward.

### What changed since rc1

- **Paws::Core slimmed.** The runtime materialiser, loaders, and Smithy IR are
  no longer shipped in Core — they are build-time-only. `Paws->service('X')`
  now requires `Paws/X.pm` on disk; there is no fallback materialisation path.
- **Dropped workflows.** Several CI workflows were removed or consolidated
  (see [docs/ci.md](ci.md)).
- **Test suite trimmed.** Tests that depended on runtime materialisation are
  skipped in the Core distribution.

### Upgrade steps

1. **Update the version variable** in your cpanfile:

   ```perl
   my $V = '1.0.0';  # was '1.0.0-rc1'
   ```

2. **Re-run install:**

   ```bash
   cpanm --installdeps .
   ```

3. **Test.** If your code relied on runtime materialisation of services that
   weren't explicitly installed, those calls will now fail with
   `Can't locate Paws/<Svc>.pm in @INC`. Add the missing services to your
   cpanfile.

---

## 4. cpanfile vs one-shot install

### cpanfile (recommended)

Best for projects with a version-controlled dependency manifest. All service
URLs share a single `$V` variable, so upgrading is a one-line change.

```perl
my $V    = '1.0.0';
my $base = "https://github.com/Peatix/aws-sdk-perl/releases/download/v$V";

requires 'Paws', url => "$base/Paws-Core-$V.tar.gz";
requires 'Paws::S3', url => "$base/Paws-S3-$V.tar.gz";
```

Install: `cpanm --installdeps .` or `carton install`.

### One-shot `cpanm` (ad hoc)

Useful for quick tests, CI base images, or Dockerfiles where you don't want a
cpanfile.

```bash
cpanm \
  https://github.com/Peatix/aws-sdk-perl/releases/download/v1.0.0/Paws-Core-1.0.0.tar.gz \
  https://github.com/Peatix/aws-sdk-perl/releases/download/v1.0.0/Paws-S3-1.0.0.tar.gz
```

The downside: every version bump requires editing every URL. For anything
beyond throwaway scripts, prefer the cpanfile approach.

### Generating a cpanfile snippet automatically

If you have an existing codebase and want to discover which services to pin:

```bash
bin/paws-migrate-cpanfile --root . --version 1.0.0
```

Write the output directly to a file with `--output cpanfile.paws`, then merge
it into your project's cpanfile.

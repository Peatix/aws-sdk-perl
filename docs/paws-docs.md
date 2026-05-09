# Paws-Docs companion distribution

When PR 19 of this stack drops `auto-lib/` from the main `Paws`
distribution, the per-shape POD pages that today ship inside the
`.pm` files are no longer reachable via `perldoc Paws::EC2::Instance`.
The `Paws-Docs` companion dist exists to preserve that
discoverability.

## What's in the dist

`Paws-Docs` is pure POD. After `cpanm Paws::Docs` users get one
`.pod` file per Paws shape under `lib/Paws/<Service>/<Shape>.pod`.
`perldoc Paws::EC2::Instance` resolves to the `.pod` file in
`Paws-Docs`; the runtime class lives (lazily-materialised) in `Paws`.

## How the dist is built

```
make -C paws-docs-dist build
```

Internally:

1. `script/paws-build-pod` walks every service known to
   `Paws::Model::Loader::Resolver` (Smithy in `share/smithy/` first,
   Botocore JSON fallback).
2. For each service it materialises the IR, then for each shape it
   renders POD using the same conventions the AOT generator emitted
   today (`=head1 NAME` + DESCRIPTION + ATTRIBUTES + SEE ALSO).
3. Output goes to `paws-docs-dist/lib/Paws/<Service>/<Shape>.pod`.
4. `dzil build` produces `Paws-Docs-X.YZ.tar.gz` for upload to CPAN.

## Coupling with Paws's release cadence

`Paws-Docs` is rebuilt and released alongside `Paws`. The release
process for a new `Paws` should:

1. Build `Paws` as usual.
2. `make -C paws-docs-dist build` to refresh `Paws-Docs`.
3. Upload both tarballs to CPAN in the same window so the docs and
   the runtime never drift.

The CPAN version of `Paws-Docs` should track the version of `Paws`
that produced it. Bump `paws-docs-dist/lib/Paws/Docs.pm`'s
`$VERSION` when `Paws`'s version bumps.

## Running it

```
# Build everything (requires Paws's botocore submodule populated
# OR share/smithy/ vendored - see PR 18):
make -C paws-docs-dist build

# Or generate POD for one service:
script/paws-build-pod --service IAM --output-root /tmp/iam-docs
ls /tmp/iam-docs/Paws/IAM/

# Smoke check: install and resolve a doc page:
cpanm paws-docs-dist/Paws-Docs-*.tar.gz
perldoc Paws::EC2::Instance
```

## File layout

```
paws-docs-dist/
├── dist.ini                      # Dist::Zilla config
├── Makefile                      # local build helper
├── lib/
│   ├── Paws/Docs.pm              # entry point; pure POD
│   └── Paws/<Service>/*.pod      # GENERATED at build time
```

The `lib/Paws/<Service>/` tree is **generated** by
`script/paws-build-pod`; only the `.pm` entry point is committed.

## Why a separate dist

- Keeps the main `Paws` dist small (PR 19 is the dist-size win).
- POD changes don't force a `Paws` runtime release (and vice versa)
  unless behaviour changed too.
- Lets the docs roll out at a different cadence — e.g. ship a docs-
  only release if AWS just changed wording.

## Caveats

- Per-shape `.pod` files install into a sibling distribution's
  namespace. CPAN allows this; `perldoc` resolution uses `@INC`
  search order.
- The first POD release from `Paws-Docs` should be coordinated with
  the major-version bump in PR 19 so users always have one or the
  other (or both) in `@INC`.

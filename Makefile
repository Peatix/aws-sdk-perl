# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

# `make dist` ships a tarball ready for `cpanm`. share/smithy/ is
# committed to git (see script/paws-vendor-smithy + the
# share/smithy/.upstream-sha pin), so [Git::GatherDir] + [ShareDir]
# in dist.ini ship the IR as-is — no pre-build vendoring step is
# required. The materialiser resolves services straight out of the
# installed share dir (see Paws::Model::Loader::Resolver and
# lib/Paws/Model/Materializer/Auto.pm).
dist:
	cpanm -n -l dzil-local Dist::Zilla
	PATH=$(PATH):dzil-local/bin PERL5LIB=dzil-local/lib/perl5 dzil authordeps --missing | cpanm -n -l dzil-local/
	PATH=$(PATH):dzil-local/bin PERL5LIB=dzil-local/lib/perl5 dzil build

test:
	carton exec -- prove -r -v -I lib -I builder-lib t/

pod-test:
	# PR 19 (stack19) removed auto-lib/. Hand-written modules live
	# in lib/Paws/; per-shape POD lives in the Paws-Docs companion
	# dist (see paws-docs-dist/). Validate both.
	for i in `find lib/Paws/ -name '*.pm'`; do podchecker $$i; done;
	if [ -d paws-docs-dist/lib/Paws ]; then for i in `find paws-docs-dist/lib/Paws/ -name '*.pod'`; do podchecker $$i; done; fi

cover:
	cover -delete
	HARNESS_PERL_SWITCHES=-MDevel::Cover make test
	cover

# Deterministic, machine-readable coverage run for CI. Differs from `cover`
# in that it does not rely on `carton exec` (CI installs deps system-wide
# via cpm) and it tolerates the absence of cover_db on the first run.
#
# Scope:
#
#   - Devel::Cover's instrumentation list is restricted to lib/ via
#     +ignore,^t/ and +ignore,^local/. t/lib/ is test fixtures. local/ is where CI's
#     cpm installs CPAN deps; without ignoring it, the (Moose /
#     DateTime / XML::SAX / ...) trees show up in cover_db with
#     single-digit coverage and pull the headline number down ~30pp.
#   - The test list excludes t/01_load.t and t/99_pod_*.t. They
#     preload all 401 services through the materialiser (and
#     99_pod_syntax walks the dist's POD), dominating the runtime
#     under Devel::Cover without contributing any lib/ statement
#     coverage. Service-loading is gated by the `test` workflow;
#     POD validity by `make pod-test`.
#   - --jobs 1 because Devel::Cover serialises cover_db merges on
#     finish, so parallel jobs only add contention.
#
# See docs/testing.md "Scope of cover-ci" for the longer explanation.
cover-ci:
	rm -rf cover_db
	HARNESS_PERL_SWITCHES='-MDevel::Cover=-silent,1,-summary,0,+ignore,^t/,+ignore,^local/' \
	  prove --lib --verbose --jobs 1 \
	  -I builder-lib -I t/lib \
	  $$(find t -type f -name '*.t' \
	    \! -name '01_load.t' \
	    \! -name '99_pod_*.t' \
	    | LC_ALL=C sort) \
	  || true
	cover -summary
	cover -report json -outputdir cover_db || true

# Refresh share/smithy/ from upstream awslabs/aws-sdk-rust at the
# SHA pinned in share/smithy/.upstream-sha. Drives the daily
# refresh-source-deps workflow; contributors run this manually after
# bumping the pin (`git diff --stat share/smithy/` to verify scope).
vendor-smithy:
	./script/paws-vendor-smithy --clean

# Run a single test file (or pattern that resolves to one). TEST is
# either a path under t/ or a substring matched against `t/*TEST*.t`.
# See `script/test-one --help` (or read script/test-one) for details.
#   make test-one TEST=02
#   make test-one TEST=t/12_regions.t
test-one:
	@if [ -z "$(TEST)" ]; then \
	  echo 'usage: make test-one TEST=<pattern-or-path>' >&2; \
	  echo '       (e.g. TEST=02 or TEST=t/12_regions.t)' >&2; \
	  exit 2; \
	fi
	./script/test-one $(TEST)

# Run one shard of the test suite. SHARD is a name from
# `script/test-shard --list`. The CI test workflow fans out across
# these shards in a strategy matrix to cut wall-clock time. Local
# developers should normally just use `make test`; this target is
# here so the CI step matches the developer-facing entry point.
#   make test-shard SHARD=load-a
#   make test-shard SHARD=responses
test-shard:
	@if [ -z "$(SHARD)" ]; then \
	  echo 'usage: make test-shard SHARD=<name>' >&2; \
	  echo '       (`script/test-shard --list` for the names)' >&2; \
	  exit 2; \
	fi
	carton exec -- ./script/test-shard $(SHARD)

numbers:
	@echo "Number of Smithy services in share/" ; \
	  find share/smithy -name '*.smithy.json' 2>/dev/null | wc -l

run_dynamo_local:
	( mkdir /tmp/dynamodb-local && curl https://s3.eu-central-1.amazonaws.com/dynamodb-local-frankfurt/dynamodb_local_latest.tar.gz | tar xvz --directory /tmp/dynamodb-local ) ; cd /tmp/dynamodb-local; java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb -inMemory

run_minio_local:
	( mkdir /tmp/minio_data && wget -O /tmp/minio_data/minio https://dl.minio.io/server/minio/release/linux-amd64/minio && chmod +x /tmp/minio_data/minio ) ; /tmp/minio_data/minio server /tmp/minio_data/

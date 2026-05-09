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
# Scope (post-PR #19 / stack19, after auto-lib/ was dropped):
#
#   - Devel::Cover's instrumentation list is restricted to lib/ via
#     +ignore,^t/ and +ignore,^local/. The +ignore,^auto-lib/ entry
#     from PR #68 is now a no-op (auto-lib/ doesn't exist) but is
#     kept defensively so a stray regen during a CI run doesn't
#     skew coverage. t/lib/ is test fixtures. local/ is where CI's
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
	HARNESS_PERL_SWITCHES='-MDevel::Cover=-silent,1,-summary,0,+ignore,^auto-lib/,+ignore,^t/,+ignore,^local/' \
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

# Backward-compat aliases for any contributor muscle memory.
# Pre-stack18 these pulled the botocore submodule; post-stack18 they
# pull Smithy. The botocore vendoring path is gone.
pull-other-sdks: vendor-smithy
pull-boto-develop: vendor-smithy

# PR 19 (stack19) removed auto-lib/. Service classes are
# materialised on demand by Paws::Model::Materializer from the
# vendored Smithy IR (with botocore JSON fallback), so there is no
# AOT regeneration step anymore. The targets are kept as no-ops so
# that contributor muscle memory + any external tooling that runs
# `make gen-classes` (e.g. older CI scripts) gets an actionable
# message instead of a cryptic builder failure.
gen-paws:
	@echo "gen-paws is a no-op since stack19 / Paws 1.00."
	@echo "Paws.pm is now a hand-edited file at lib/Paws.pm; the"
	@echo "templates/default/paws_pm.tt template is kept in sync"
	@echo "for downstream regen but doesn't drive a build step."

gen-classes:
	@echo "gen-classes is a no-op since stack19 / Paws 1.00."
	@echo "Service classes are materialised on demand from"
	@echo "share/smithy/ (and share/botocore/ as fallback)."
	@echo "Refresh the vendored sources with:"
	@echo "  make vendor-smithy"

# Backward-compat aliases.
gen-classes-no-doc-fetch: gen-classes

# Regenerate one (or several) services. SERVICE accepts a botocore
# directory name (e.g. sqs), a Paws class name (e.g. SQS, ACMPCA), or
# the full path to a service-2.json file. Multiple values can be
# space-separated. See `script/gen-service --help` for details.
#   make gen-service SERVICE=sqs
#   make gen-service SERVICE='sqs s3 ec2'
gen-service:
	@if [ -z "$(SERVICE)" ]; then \
	  echo 'usage: make gen-service SERVICE=<name>' >&2; \
	  echo '       (multiple OK: SERVICE="sqs s3 ec2")' >&2; \
	  exit 2; \
	fi
	./script/gen-service $(SERVICE)

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

# gen-shard / docu-links: PR 19 (stack19) removed auto-lib/, so
# the matrix-shard build pipeline these targets fed disappears with
# it. Kept as no-ops with a pointer to the new path so muscle
# memory doesn't bite.
gen-shard:
	@echo "gen-shard is a no-op since stack19 / Paws 1.00."
	@echo "There's no auto-lib/ to fan out across anymore. The"
	@echo "vendored Smithy IR is the source of truth; refresh via:"
	@echo "  make vendor-smithy"

docu-links:
	@echo "docu-links is a no-op since stack19 / Paws 1.00."
	@echo "Per-shape POD lives in the Paws-Docs companion dist;"
	@echo "regenerate via paws-docs-dist/Makefile."

# numbers used to count the auto-lib/ files. Now reports the number
# of vendored IR sources. Smithy is the preferred format; botocore
# is the fallback for services without a Smithy IR.
numbers:
	@echo "Number of Smithy services in share/" ; \
	  find share/smithy -name '*.smithy.json' 2>/dev/null | wc -l
	@echo "Number of botocore services in share/" ; \
	  find share/botocore -name 'service-2.json' 2>/dev/null | wc -l

run_dynamo_local:
	( mkdir /tmp/dynamodb-local && curl https://s3.eu-central-1.amazonaws.com/dynamodb-local-frankfurt/dynamodb_local_latest.tar.gz | tar xvz --directory /tmp/dynamodb-local ) ; cd /tmp/dynamodb-local; java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb -inMemory

run_minio_local:
	( mkdir /tmp/minio_data && wget -O /tmp/minio_data/minio https://dl.minio.io/server/minio/release/linux-amd64/minio && chmod +x /tmp/minio_data/minio ) ; /tmp/minio_data/minio server /tmp/minio_data/

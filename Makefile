dist:
	cpanm -n -l dzil-local Dist::Zilla
	PATH=$(PATH):dzil-local/bin PERL5LIB=dzil-local/lib/perl5 dzil authordeps --missing | cpanm -n -l dzil-local/
	PATH=$(PATH):dzil-local/bin PERL5LIB=dzil-local/lib/perl5 dzil build

test:
	carton exec -- prove -r -v -I lib -I builder-lib t/

pod-test:
	# PR 19: per-shape POD now lives in the Paws-Docs companion dist;
	# this target validates that dist's POD content.
	if [ -d paws-docs-dist/lib/Paws ]; then for i in `find paws-docs-dist/lib/Paws/ -name '*.pod'`; do podchecker $$i; done; fi
	for i in `find lib/Paws/ -name '*.pm'`; do podchecker $$i; done;

cover:
	cover -delete
	HARNESS_PERL_SWITCHES=-MDevel::Cover make test
	cover

# Deterministic, machine-readable coverage run for CI. Differs from `cover`
# in that it does not rely on `carton exec` (CI installs deps system-wide
# via cpm) and it tolerates the absence of cover_db on the first run.
cover-ci:
	rm -rf cover_db
	HARNESS_PERL_SWITCHES=-MDevel::Cover=-silent,1,-summary,0 \
	  prove --lib --recurse --verbose --jobs 2 \
	  -I builder-lib t/ \
	  || true
	cover -summary
	cover -report json -outputdir cover_db || true

# PR 18 (stack18) replaced the botocore submodule with vendored
# Smithy IR in share/smithy/ (with botocore JSON fallback in
# share/botocore/). Refresh via:
vendor-smithy:
	./script/paws-vendor-smithy --clean

# Backward-compat aliases for any contributor muscle memory.
pull-other-sdks: vendor-smithy
pull-boto-develop: vendor-smithy

gen-paws:
	carton exec ./builder-bin/gen_classes.pl --paws_pm

# PR 19 (stack19) removed auto-lib/. Service classes are now built on
# demand by Paws::Materializer; gen-classes and friends are
# preserved as no-ops so old CI / contributor scripts don't break.

gen-classes:
	@echo "gen-classes is a no-op since stack19 / Paws 1.00."
	@echo "Service classes are materialised on demand from share/smithy/"
	@echo "and share/botocore/. Refresh sources with:"
	@echo "  make vendor-smithy"

gen-classes-no-doc-fetch: gen-classes
docu-links: gen-classes

# numbers used to count the auto-lib/ files. Now reports the number
# of vendored IR sources.
numbers:
	@echo "Number of Smithy services in share/" ; \
	  find share/smithy -name '*.smithy.json' 2>/dev/null | wc -l
	@echo "Number of botocore services in share/" ; \
	  find share/botocore -name 'service-2.json' 2>/dev/null | wc -l

run_dynamo_local:
	( mkdir /tmp/dynamodb-local && curl https://s3.eu-central-1.amazonaws.com/dynamodb-local-frankfurt/dynamodb_local_latest.tar.gz | tar xvz --directory /tmp/dynamodb-local ) ; cd /tmp/dynamodb-local; java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb -inMemory

run_minio_local:
	( mkdir /tmp/minio_data && wget -O /tmp/minio_data/minio https://dl.minio.io/server/minio/release/linux-amd64/minio && chmod +x /tmp/minio_data/minio ) ; /tmp/minio_data/minio server /tmp/minio_data/

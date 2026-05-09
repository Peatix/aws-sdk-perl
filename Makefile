dist:
	cpanm -n -l dzil-local Dist::Zilla
	PATH=$(PATH):dzil-local/bin PERL5LIB=dzil-local/lib/perl5 dzil authordeps --missing | cpanm -n -l dzil-local/
	PATH=$(PATH):dzil-local/bin PERL5LIB=dzil-local/lib/perl5 dzil build

test:
	carton exec -- prove -r -v -I lib -I auto-lib t/

pod-test:
	for i in `find auto-lib/Paws/ -name \*.pm`; do podchecker $$i; done;

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
	  -I auto-lib t/ \
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

gen-classes:
	mkdir -p auto-lib/Paws/DeleteMe
	rm -r auto-lib/Paws/*
	carton exec ./builder-bin/gen_classes.pl --docu_links
	carton exec ./builder-bin/gen_classes.pl --paws_pm --classes

# Same as gen-classes but skips the --docu_links step that fetches AWS
# documentation URLs over HTTP. Use this in CI / pull request checks
# where speed and isolation matter more than documentation completeness.
gen-classes-no-doc-fetch:
	mkdir -p auto-lib/Paws/DeleteMe
	rm -r auto-lib/Paws/*
	carton exec ./builder-bin/gen_classes.pl --paws_pm --classes

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

docu-links:
	carton exec ./builder-bin/gen_classes.pl --docu_links

numbers:
	echo "Number of services" ; ls auto-lib/Paws/*.pm | wc -l
	echo "Number of methods" ; grep "sub [A-Z]" auto-lib/Paws/*.pm | wc -l
	echo "Number of IN/OUT objects" ; ls auto-lib/Paws/*/*.pm | wc -l
	echo "Number of attributes" ; grep "has [A-Z]" auto-lib/Paws/*/*.pm  | wc -l
	echo "-----------"
	echo "JSON" ; grep "::JsonCaller" auto-lib/Paws/*.pm | wc -l
	echo "REST-JSON" ; grep "::RestJsonCaller" auto-lib/Paws/*.pm | wc -l
	echo "Query" ; grep "::QueryCaller" auto-lib/Paws/*.pm | wc -l
	echo "REST-XML" ; grep "::RestXML" auto-lib/Paws/*.pm | wc -l
	echo "EC2Caller" ; grep "::EC2Caller" auto-lib/Paws/*.pm | wc -l

run_dynamo_local:
	( mkdir /tmp/dynamodb-local && curl https://s3.eu-central-1.amazonaws.com/dynamodb-local-frankfurt/dynamodb_local_latest.tar.gz | tar xvz --directory /tmp/dynamodb-local ) ; cd /tmp/dynamodb-local; java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb -inMemory

run_minio_local:
	( mkdir /tmp/minio_data && wget -O /tmp/minio_data/minio https://dl.minio.io/server/minio/release/linux-amd64/minio && chmod +x /tmp/minio_data/minio ) ; /tmp/minio_data/minio server /tmp/minio_data/

#!/usr/bin/env bash
# A4 prototype: modular per-service CPAN distributions.
#
# For each of the 10 production services:
#   1. Make a temporary dist tree.
#   2. dist.ini declares the service-specific dist (Paws-S3, etc.) and
#      lists Paws (no version pin yet) as a runtime dep.
#   3. Copy the legacy AOT Paws/<Service>.pm + Paws/<Service>/ tree from
#      the existing local-legacy install (acts as the materialised
#      output we'd ship). Real production version would have the
#      materialiser dump these once at build time.
#   4. Tarball it via plain Module::Build::Tiny (no dzil — keep the
#      prototype self-contained).
#
# Then measure:
#   * Sum of tarball sizes for the 10 sub-dists.
#   * `cpanm` install of all 10 sub-dists into a fresh local-lib that
#     already has Paws::Core (here: a stripped Paws-1.00 without IR).
#   * Cold first-call for each service.
#
# The "Paws::Core" half of the modular split is approximated by the
# current Paws-1.00.tar.gz with share/smithy/ removed: it provides
# Paws.pm + Paws::API/Net/Credential/Model/SerDes etc. that every
# sub-dist needs. We do NOT prototype the Paws::Core dist generation
# itself in this script; for size comparison the existing Paws-1.00
# tarball minus 164 MB of IR is a fair proxy.

set -euo pipefail

WORK=/tmp/paws-rfc-20260510-081300/installs/A4-modular
LEGACY=/tmp/paws-perf-bench-20260509-232818/local-legacy/lib/perl5

rm -rf "$WORK"
mkdir -p "$WORK/dists" "$WORK/tarballs" "$WORK/local-lib"

declare -a SERVICES=(SecretsManager S3 SSM SES SQS EC2 CloudWatch Firehose KMS DynamoDB)

build_one() {
    local svc=$1
    local dist_dir="$WORK/dists/Paws-$svc"
    local tarball="$WORK/tarballs/Paws-$svc-1.00.tar.gz"

    rm -rf "$dist_dir"
    mkdir -p "$dist_dir/lib/Paws"

    if [ ! -r "$LEGACY/Paws/$svc.pm" ]
    then
        echo "WARN: $svc.pm not found in legacy install" >&2
        return 1
    fi

    cp "$LEGACY/Paws/$svc.pm" "$dist_dir/lib/Paws/$svc.pm"
    if [ -d "$LEGACY/Paws/$svc" ]
    then
        cp -R "$LEGACY/Paws/$svc" "$dist_dir/lib/Paws/$svc"
    fi

    # Plain Module::Build::Tiny Build.PL.
    cat > "$dist_dir/Build.PL" <<EOF
use strict;
use warnings;
use Module::Build::Tiny 0.034;
Build_PL();
EOF

    cat > "$dist_dir/META.yml" <<EOF
---
abstract: 'Modular AWS SDK: Paws::$svc client'
author:
    - 'A4 RFC prototype'
build_requires:
    Module::Build::Tiny: '0.034'
configure_requires:
    Module::Build::Tiny: '0.034'
dynamic_config: 0
generated_by: 'A4 prototype'
license: apache_2_0
meta-spec:
    url: http://module-build.sourceforge.net/META-spec-v1.4.html
    version: '1.4'
name: Paws-$svc
provides:
    Paws::$svc:
        file: lib/Paws/$svc.pm
        version: 1.00
requires:
    Paws: 0
version: '1.00'
EOF

    cat > "$dist_dir/Makefile.PL" <<EOF
require Module::Build::Tiny;
Module::Build::Tiny::Build_PL();
EOF

    # MANIFEST.
    ( cd "$dist_dir" && find . -type f | sort > MANIFEST )

    # Tarball it.
    ( cd "$WORK/dists" && tar czf "$tarball" "Paws-$svc" )

    local sz=$(stat -f %z "$tarball")
    printf "%s\t%d bytes\n" "Paws-$svc" "$sz"
}

echo "=== building per-service tarballs ==="
total_tarball_bytes=0
for svc in "${SERVICES[@]}"
do
    if line=$(build_one "$svc")
    then
        echo "$line"
        bytes=$(echo "$line" | awk -F'\t' '{print $2}' | awk '{print $1}')
        total_tarball_bytes=$((total_tarball_bytes + bytes))
    fi
done
printf "Total tarball bytes: %d (%.2f MB)\n" "$total_tarball_bytes" "$(echo "scale=2; $total_tarball_bytes/1048576" | bc)"

echo ""
echo "=== one-shot cpanm install (all 10 in single command) ==="
mkdir -p "$WORK/local-lib"
# Pre-populate Paws::Core into the local-lib via current on-demand
# install (so the sub-dists' "requires Paws" is already satisfied).
cp -R /tmp/paws-perf-bench-rerun/local-new/lib "$WORK/local-lib/"

# Time the install of all 10 sub-dists in one cpanm call.
export PATH="$HOME/perl5/bin:$PATH"
export PERL5LIB="$HOME/perl5/lib/perl5"

start_one_shot=$(date +%s)
cpanm --notest --quiet --local-lib="$WORK/local-lib" "$WORK/tarballs"/*.tar.gz \
    > "$WORK/install-one-shot.log" 2>&1 \
    && rc=0 || rc=$?
end_one_shot=$(date +%s)
echo "one-shot install: rc=$rc wall=$((end_one_shot - start_one_shot))s"
tail -5 "$WORK/install-one-shot.log"

echo ""
echo "=== ten separate cpanm install invocations (recreate fresh local-lib) ==="
rm -rf "$WORK/local-lib-iter"
cp -R /tmp/paws-perf-bench-rerun/local-new/lib "$WORK/local-lib-iter/"
mkdir -p "$WORK/local-lib-iter/lib"

start_iter=$(date +%s)
for svc in "${SERVICES[@]}"
do
    cpanm --notest --quiet --local-lib="$WORK/local-lib-iter" "$WORK/tarballs/Paws-$svc-1.00.tar.gz" \
        > "$WORK/install-iter-$svc.log" 2>&1 || echo "FAIL: $svc rc=$?"
done
end_iter=$(date +%s)
echo "ten-cpanm install: wall=$((end_iter - start_iter))s"

# Final sizes.
echo ""
echo "=== installed sizes ==="
echo "one-shot lib:   $(du -sh "$WORK/local-lib/lib/perl5" 2>/dev/null | awk '{print $1}')"
echo "iter lib:       $(du -sh "$WORK/local-lib-iter/lib/perl5" 2>/dev/null | awk '{print $1}')"
echo "Paws/<svc>.pm + dirs in iter lib:"
for svc in "${SERVICES[@]}"
do
    if [ -e "$WORK/local-lib-iter/lib/perl5/Paws/$svc.pm" ]
    then
        sz=$(du -sh "$WORK/local-lib-iter/lib/perl5/Paws/$svc.pm" "$WORK/local-lib-iter/lib/perl5/Paws/$svc" 2>/dev/null | tail -1 | awk '{print $1}')
        cnt=$(find "$WORK/local-lib-iter/lib/perl5/Paws/$svc" 2>/dev/null | wc -l | xargs)
        printf "  %-20s %s (%s files)\n" "$svc" "$sz" "$cnt"
    fi
done

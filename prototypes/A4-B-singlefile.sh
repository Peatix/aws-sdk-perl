#!/usr/bin/env bash
# A4-B + A3 prototype: per-service sub-dist, but each ships ONE .pm
# file containing every package the service needs (instead of N
# separate .pm files).
#
# Source: the legacy `Paws@0.46` install (same as A4-modular.sh).
# For each service, walk lib/Paws/<svc>/*.pm + top-level Paws/<svc>.pm,
# concatenate the bodies (stripping per-file `1;` and `__END__`),
# and emit a single lib/Paws/<svc>.pm.

set -euo pipefail

WORK=/tmp/paws-rfc-20260510-081300/installs/A4-B-singlefile
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

    local out="$dist_dir/lib/Paws/$svc.pm"

    {
        echo "# A4-B + A3 prototype: single-file per service."
        echo "# Generated $(date -u +%Y-%m-%dT%H:%M:%SZ) from legacy Paws@0.46."
        echo "# Contains the top-level Paws::$svc class plus every"
        echo "# per-operation / per-shape package the legacy install ships."
        echo "use strict;"
        echo "use warnings;"
        echo ""

        local files=("$LEGACY/Paws/$svc.pm")
        if [ -d "$LEGACY/Paws/$svc" ]
        then
            while IFS= read -r f
            do
                files+=("$f")
            done < <(find "$LEGACY/Paws/$svc" -name '*.pm' -type f | sort)
        fi

        for f in "${files[@]}"
        do
            echo ""
            echo "# ---- begin $f ----"
            perl -e '
                use strict;
                use warnings;
                my $f = shift;
                open my $fh, "<", $f or die "open $f: $!";
                my @lines = <$fh>;
                close $fh;
                # Drop trailing 1; / __END__ / empty trailing lines so
                # multiple packages can be concatenated cleanly.
                while (@lines && $lines[-1] =~ /^\s*$/) { pop @lines }
                if (@lines && $lines[-1] =~ /^__END__\s*$/) { pop @lines }
                while (@lines && $lines[-1] =~ /^\s*$/) { pop @lines }
                if (@lines && $lines[-1] =~ /^\s*1;\s*$/) { pop @lines }
                while (@lines && $lines[-1] =~ /^\s*$/) { pop @lines }
                print @lines, "\n";
            ' "$f"
        done

        echo ""
        echo "1;"
    } > "$out"

    cat > "$dist_dir/Build.PL" <<EOF
use strict;
use warnings;
use Module::Build::Tiny 0.034;
Build_PL();
EOF

    cat > "$dist_dir/META.yml" <<EOF
---
abstract: 'Modular AWS SDK: Paws::$svc client (A4-B-singlefile prototype)'
author:
    - 'A4-B-singlefile RFC prototype'
build_requires:
    Module::Build::Tiny: '0.034'
configure_requires:
    Module::Build::Tiny: '0.034'
dynamic_config: 0
generated_by: 'A4-B-singlefile prototype'
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

    ( cd "$dist_dir" && find . -type f | sort > MANIFEST )
    ( cd "$WORK/dists" && tar czf "$tarball" "Paws-$svc" )

    local sz=$(stat -f %z "$tarball")
    local kb_pm=$(du -k "$out" | awk '{print $1}')
    printf "%-20s tarball=%9d B  single-file=%6d KB\n" "Paws-$svc" "$sz" "$kb_pm"
}

echo "=== building per-service single-file tarballs ==="
total_tarball_bytes=0
for svc in "${SERVICES[@]}"
do
    if line=$(build_one "$svc")
    then
        echo "$line"
        bytes=$(echo "$line" | awk '/tarball=/{for(i=1;i<=NF;i++) if ($i ~ /^tarball=/) {gsub("tarball=", "", $i); print $i; exit}}')
        total_tarball_bytes=$((total_tarball_bytes + bytes))
    fi
done
printf "Total tarball bytes: %d (%.2f MB)\n" "$total_tarball_bytes" "$(echo "scale=2; $total_tarball_bytes/1048576" | bc)"

echo ""
echo "=== one-shot cpanm install (all 10 in single command) ==="
mkdir -p "$WORK/local-lib"
# Prep IR-stripped Core
cp -R /tmp/paws-rfc-20260510-081300/installs/A4-Core-stripped/lib "$WORK/local-lib/"

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
echo "=== installed sizes ==="
echo "lib total: $(du -sh "$WORK/local-lib/lib/perl5" 2>/dev/null | awk '{print $1}')"
echo "Paws-related file count: $(find "$WORK/local-lib/lib/perl5" -path '*Paws*' -type f 2>/dev/null | wc -l | xargs)"
echo "Per-service .pm + dirs:"
for svc in "${SERVICES[@]}"
do
    if [ -e "$WORK/local-lib/lib/perl5/Paws/$svc.pm" ]
    then
        sz=$(du -k "$WORK/local-lib/lib/perl5/Paws/$svc.pm" 2>/dev/null | awk '{print $1}')
        cnt=$(find "$WORK/local-lib/lib/perl5/Paws/$svc.pm" "$WORK/local-lib/lib/perl5/Paws/$svc" 2>/dev/null | wc -l | xargs)
        printf "  %-20s single .pm = %s KB (%s files counting dir)\n" "$svc" "$sz" "$cnt"
    fi
done

#!/usr/bin/env bash
#
# Build the per-service Paws dists that paws-live-smoke.pl exercises and
# install them into a throwaway local-lib, so the harness can run
# against the same modular artefacts a consumer would `cpanm`.
#
# The Paws::Core runtime (lib/Paws.pm + the wire layer) is supplied from
# the repo checkout's lib/ at run time, so the per-service dists' `Paws`
# dependency resolves without fetching upstream Paws from CPAN. That
# means whatever SDK fixes are present in this checkout are what the
# smoke run exercises.
#
# Usage:
#   examples/live-smoke/build-smoke-lib.sh [--out DIR] [--service NAME ...]
#
# Defaults: --out examples/live-smoke/local, the service set the harness
# needs. Requires the runtime cpanfile deps to be installed and
# reachable on PERL5LIB (e.g. a `local/` from `cpanm --installdeps`, or
# `carton install`); pass that via PERL5LIB before invoking.

set -euo pipefail

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
repo_root=$(cd -- "$script_dir/../.." && pwd)
cd -- "$repo_root"

out_dir="$script_dir/local"
# STS is always needed: Paws::Credential::AssumeRole (PAWS_SMOKE_ROLE_ARN)
# calls Paws->service('STS') to obtain the assumed credentials.
services=(STS S3 DynamoDB SQS CloudWatch KMS SSM SecretsManager EC2 Route53 IAM Firehose)

while [ "$#" -gt 0 ]
do
  case "$1" in
    --out)
      out_dir="$2"
      shift 2
      ;;
    --service)
      services=("$2")
      shift 2
      while [ "$#" -gt 0 ] && [ "${1#--}" = "$1" ]
      do
        services+=("$1")
        shift
      done
      ;;
    -h|--help)
      sed -n '2,30p' "$0"
      exit 0
      ;;
    *)
      echo "unknown argument: $1" >&2
      exit 2
      ;;
  esac
done

# cpanm --local-lib=DIR installs modules under DIR/lib/perl5, so point
# it at $out_dir directly (giving $out_dir/lib/perl5).
dist_dir="$out_dir/dist"

rm -rf "$dist_dir" "$out_dir/lib" "$out_dir/man" "$out_dir/bin"
mkdir -p "$dist_dir"

# Deterministic tarballs so repeated builds are byte-identical.
export SOURCE_DATE_EPOCH="${SOURCE_DATE_EPOCH:-1700000000}"

for svc in "${services[@]}"
do
  echo "building Paws-$svc"
  perl -I lib script/build-modular-dist --output-dir "$dist_dir" "$svc"
done

echo "installing into $out_dir/lib/perl5"
# Repo lib/ on PERL5LIB satisfies the `Paws` (core) runtime dependency.
PERL5LIB="$repo_root/lib:${PERL5LIB:-}" \
  cpanm --notest --local-lib="$out_dir" "$dist_dir"/Paws-*.tar.gz

cat <<EOF

Done. Run the harness with:

  PERL5LIB="$out_dir/lib/perl5:$repo_root/lib:\${PERL5LIB:-}" \\
    PAWS_SMOKE_ROLE_ARN=arn:aws:iam::<sandbox-account>:role/cursor-agent/CursorAgentSandbox \\
    perl $script_dir/paws-live-smoke.pl
EOF

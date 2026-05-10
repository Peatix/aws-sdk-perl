#!/usr/bin/env perl
# t/build/04_docs_dist.t
#
# Integration test: runs script/build-modular-docs-dist STS, asserts
# the output tarball contains the expected .pod files and that each
# is parseable by Pod::Simple.

use strict;
use warnings;
use Test::More;
use FindBin;
use File::Path qw(remove_tree);

my $repo_root = "$FindBin::Bin/../..";
my $script    = "$repo_root/script/build-modular-docs-dist";
plan skip_all => "build-modular-docs-dist not present" unless -x $script;

local $ENV{SOURCE_DATE_EPOCH} = '1700000000';

my $svc      = 'STS';
my $dist_dir = "$repo_root/tmp/test-docs";
remove_tree($dist_dir) if -d $dist_dir;
remove_tree("$repo_root/tmp/build") if -d "$repo_root/tmp/build";

my $rc = system($^X, '-I', "$repo_root/lib",
                $script, '--output-dir', $dist_dir, $svc);
is($rc, 0, "build-modular-docs-dist STS exited cleanly") or BAIL_OUT("build failed");

my ($version) = do {
    open my $fh, '<', "$repo_root/lib/Paws.pm" or BAIL_OUT("open Paws.pm: $!");
    local $/; my $body = <$fh>;
    $body =~ /our\s+\$VERSION\s*=\s*'([^']+)'/
        ? ($1) : BAIL_OUT("could not extract VERSION from lib/Paws.pm");
};

my $tarball = "$dist_dir/Paws-${svc}-Docs-$version.tar.gz";
ok(-r $tarball, "tarball produced at $tarball");

my @lines = split /\n/, qx{tar -tzf $tarball};
my @pod_files = grep { /\.pod$/ } @lines;
ok(@pod_files >= 5, "tarball contains at least 5 .pod files (saw " . scalar(@pod_files) . ")");

# Spot-check structure.
my @expected = (
    "Paws-${svc}-Docs-$version/lib/Paws/STS.pod",
    "Paws-${svc}-Docs-$version/lib/Paws/STS/AssumeRole.pod",
    "Paws-${svc}-Docs-$version/lib/Paws/STS/Credentials.pod",
);
for my $exp (@expected) {
    ok((grep { $_ eq $exp } @lines), "tarball contains $exp");
}

# Extract and parse-check.
my $extract_dir = "$repo_root/tmp/test-docs-extracted";
remove_tree($extract_dir) if -d $extract_dir;
mkdir $extract_dir;
$rc = system('tar', '--extract', '--gzip', '--file', $tarball,
             '--directory', $extract_dir);
is($rc, 0, "extracted tarball");

require Pod::Simple::DumpAsText;
my @errors;
for my $pod_path (@pod_files) {
    my $abs = "$extract_dir/$pod_path";
    next unless -r $abs;
    my $parser = Pod::Simple::DumpAsText->new;
    $parser->no_errata_section(1);
    $parser->complain_stderr(0);
    my $sink;
    $parser->output_string(\$sink);
    my $ok = eval { $parser->parse_file($abs); 1 };
    if (!$ok) {
        push @errors, "parse $pod_path: $@";
    } elsif ($parser->errors_seen) {
        push @errors, "errors in $pod_path: " . $parser->errors_seen;
    }
}
is(scalar(@errors), 0, 'every shipped .pod parses cleanly')
    or diag(join("\n", @errors));

remove_tree($dist_dir);
remove_tree($extract_dir);
remove_tree("$repo_root/tmp/build") if -d "$repo_root/tmp/build";

done_testing;

#!/usr/bin/env perl

# Validates that share/endpoint-rules.json is in sync with the current
# Smithy models. Runs the compiler and diffs against the committed file.

use strict;
use warnings;
use v5.10;

use FindBin qw($Bin);
use Test::More;
use File::Temp;

my $repo_root = "$Bin/../..";
my $compiler  = "$repo_root/script/compile-endpoint-rules";
my $committed = "$repo_root/share/endpoint-rules.json";

plan skip_all => 'compile-endpoint-rules not found' unless -x $compiler;
plan skip_all => 'share/endpoint-rules.json not found' unless -f $committed;

my $tmp = File::Temp->new(SUFFIX => '.json', UNLINK => 1);
my $tmp_path = $tmp->filename;

my $exit = system(
    $^X, $compiler,
    '--smithy-dir', "$repo_root/share/smithy",
    '--output',     $tmp_path,
);

is($exit, 0, 'compile-endpoint-rules exits cleanly');

if ($exit == 0) {
    open my $fh_committed, '<', $committed or die "open $committed: $!";
    local $/;
    my $committed_json = <$fh_committed>;
    close $fh_committed;

    open my $fh_fresh, '<', $tmp_path or die "open $tmp_path: $!";
    my $fresh_json = <$fh_fresh>;
    close $fh_fresh;

    is($fresh_json, $committed_json,
       'share/endpoint-rules.json matches freshly compiled output (run script/compile-endpoint-rules to regenerate)');
}

done_testing;

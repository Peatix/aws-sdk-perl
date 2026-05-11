#!/usr/bin/env perl

# Tests for the endpoint-rules helpers in Paws::Model::Materializer::Moo:
#   _find_endpoints_file
#   _endpoint_rules_data
#   _region_rules_source

use strict;
use warnings;
use v5.10;

use FindBin qw($Bin);
use Test::More;
use Cwd qw(getcwd);
use File::Temp;

use lib "$Bin/../lib";
use lib "$Bin/../../builder-lib";
use lib "$Bin/../../lib";

use Paws::Model::Materializer::Moo;

my $repo_root = "$Bin/../..";

# ── _find_endpoints_file ──────────────────────────────────────────

subtest '_find_endpoints_file finds in-tree file' => sub {
    my $orig = getcwd();
    chdir $repo_root or die "chdir $repo_root: $!";

    my $file = Paws::Model::Materializer::Moo::_find_endpoints_file();
    is($file, 'etc/_endpoints.json', 'returns relative path when run from repo root');
    ok(-f $file, 'returned path exists on disk');

    chdir $orig or die "chdir $orig: $!";
};

subtest '_find_endpoints_file fallback when in-tree absent' => sub {
    my $tmpdir = File::Temp::tempdir(CLEANUP => 1);
    my $orig   = getcwd();
    chdir $tmpdir or die "chdir $tmpdir: $!";

    my $file = Paws::Model::Materializer::Moo::_find_endpoints_file();

    if (defined $file) {
        ok(-f $file, 'File::ShareDir fallback returned a readable file');
    } else {
        pass('returns undef when in-tree file absent and ShareDir unavailable');
    }

    chdir $orig or die "chdir $orig: $!";
};

# ── _endpoint_rules_data ─────────────────────────────────────────

subtest '_endpoint_rules_data returns parsed data' => sub {
    my $orig = getcwd();
    chdir $repo_root or die "chdir $repo_root: $!";

    my $mat  = Paws::Model::Materializer::Moo->new(loader => undef);
    my $data = $mat->_endpoint_rules_data;

    is(ref $data, 'HASH', 'returns a hashref');
    ok(exists $data->{iam}, 'contains rules for iam');
    ok(exists $data->{s3},  'contains rules for s3');
    is(ref $data->{iam}, 'ARRAY', 'per-service rules are arrayrefs');

    chdir $orig or die "chdir $orig: $!";
};

subtest '_endpoint_rules_data caches result' => sub {
    my $orig = getcwd();
    chdir $repo_root or die "chdir $repo_root: $!";

    my $mat    = Paws::Model::Materializer::Moo->new(loader => undef);
    my $first  = $mat->_endpoint_rules_data;
    my $second = $mat->_endpoint_rules_data;

    is($first, $second, 'second call returns same reference (cached)');

    chdir $orig or die "chdir $orig: $!";
};

# ── _region_rules_source ─────────────────────────────────────────

subtest '_region_rules_source for a global service (iam)' => sub {
    my $orig = getcwd();
    chdir $repo_root or die "chdir $repo_root: $!";

    my $mat = Paws::Model::Materializer::Moo->new(loader => undef);
    my $src = $mat->_region_rules_source('iam');

    ok(length($src) > 0, 'returns non-empty source for iam');
    like($src, qr/has\s+'\+region_rules'/, 'contains region_rules override');
    like($src, qr/default\s*=>\s*sub/,      'contains default => sub');
    like($src, qr/amazonaws\.com/,           'references amazonaws.com');

    chdir $orig or die "chdir $orig: $!";
};

subtest '_region_rules_source returns empty for non-global service' => sub {
    my $orig = getcwd();
    chdir $repo_root or die "chdir $repo_root: $!";

    my $mat = Paws::Model::Materializer::Moo->new(loader => undef);
    my $src = $mat->_region_rules_source('no-such-service-xyz');

    is($src, '', 'returns empty string for unknown endpoint prefix');

    chdir $orig or die "chdir $orig: $!";
};

subtest '_region_rules_source returns empty for undef prefix' => sub {
    my $mat = Paws::Model::Materializer::Moo->new(loader => undef);
    my $src = $mat->_region_rules_source(undef);

    is($src, '', 'returns empty string when prefix is undef');
};

# ── generated region_rules override evals correctly ───────────────

subtest 'generated region_rules override evals and works' => sub {
    my $orig = getcwd();
    chdir $repo_root or die "chdir $repo_root: $!";

    my $mat = Paws::Model::Materializer::Moo->new(loader => undef);
    my $src = $mat->_region_rules_source('iam');

    my $base_pkg = "Paws::Test::RRBase::$$";
    my $test_pkg = "Paws::Test::RRChild::$$";

    my $eval_src = qq{
        package $base_pkg;
        use Moo;
        has region_rules => (is => 'ro', default => sub { [] });
        1;

        package $test_pkg;
        use Moo;
        extends '$base_pkg';
        $src
        1;
    };

    my $ok = eval $eval_src;
    is($@, '', 'no eval error');
    ok($ok,    'eval returned true');

    my $obj   = $test_pkg->new;
    my $rules = $obj->region_rules;
    is(ref $rules, 'ARRAY', 'region_rules returns arrayref');
    ok(scalar @$rules > 0,  'arrayref is non-empty');

    my $first = $rules->[0];
    is(ref $first, 'HASH', 'first rule element is a hashref');
    ok(exists $first->{uri}, 'first rule has a uri key');

    chdir $orig or die "chdir $orig: $!";
};

done_testing;

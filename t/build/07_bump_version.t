#!/usr/bin/env perl
# t/build/07_bump_version.t
#
# Tests for script/bump-version: the version validator used by the
# cut-release workflow. A GitHub tag whose tarballs still declare
# VERSION 1.0.0 does not overlay an already-installed 1.0.0 (cpm reads
# Module::Metadata from the .pm), so this script must refuse to cut a
# release that does not bump the package version.

use strict;
use warnings;
use Test::More;
use FindBin;
use File::Path qw(make_path remove_tree);
use File::Spec;
use File::Temp qw(tempdir);
use Cwd qw(abs_path);

my $repo_root = abs_path("$FindBin::Bin/../..");
my $script    = "$repo_root/script/bump-version";
plan skip_all => "script/bump-version not present" unless -e $script;

sub run_bump {
    my (@args) = @_;
    my $out_file = File::Spec->catfile(tempdir(CLEANUP => 1), 'gh.out');
    local $ENV{GITHUB_OUTPUT} = $out_file;
    my $cmd = join ' ', map { quotemeta($_) } ($^X, $script, @args);
    my $err = `$cmd 2>&1`;
    my $rc  = $? >> 8;
    my $gh  = '';
    if (-r $out_file) {
        open my $fh, '<', $out_file or die $!;
        local $/;
        $gh = <$fh> // '';
        close $fh;
    }
    return ($rc, $err, $gh);
}

sub write_tree {
    my ($root, %versions) = @_;
    my $core = $versions{core} // '1.0.0';
    my $pres = $versions{presigner} // $core;
    my $auth = $versions{authtoken} // $core;
    make_path("$root/lib/Paws/S3", "$root/lib/Paws/RDS");
    write_pm("$root/lib/Paws.pm",               'Paws',               $core);
    write_pm("$root/lib/Paws/S3/Presigner.pm",  'Paws::S3::Presigner', $pres);
    write_pm("$root/lib/Paws/RDS/AuthToken.pm", 'Paws::RDS::AuthToken', $auth);
}

sub write_pm {
    my ($path, $pkg, $version) = @_;
    open my $fh, '>', $path or die "write $path: $!";
    print {$fh} "package $pkg;\nour \$VERSION = '$version';\n1;\n";
    close $fh;
}

sub read_version {
    my ($path) = @_;
    open my $fh, '<', $path or die "open $path: $!";
    local $/;
    my $body = <$fh>;
    close $fh;
    $body =~ /our\s+\$VERSION\s*=\s*'([^']+)'/ or die "no VERSION in $path";
    return $1;
}

sub init_git {
    my ($root, @tags) = @_;
    my $prev = $ENV{GIT_DIR};
    # Isolate from the parent repo's git config / hooks.
    local $ENV{GIT_CONFIG_GLOBAL} = '/dev/null';
    local $ENV{GIT_CONFIG_SYSTEM} = '/dev/null';
    my $rc = system('git', '-C', $root, 'init', '--quiet');
    die "git init failed" unless $rc == 0;
    system('git', '-C', $root, 'config', 'user.email', 'bump-version-test@example.com') == 0
        or die "git config email";
    system('git', '-C', $root, 'config', 'user.name', 'bump-version-test') == 0
        or die "git config name";
    system('git', '-C', $root, 'add', '-A') == 0 or die "git add";
    system('git', '-C', $root, 'commit', '--quiet', '-m', 'init') == 0 or die "git commit";
    for my $tag (@tags) {
        system('git', '-C', $root, 'tag', $tag) == 0 or die "git tag $tag";
    }
}

# ---------------------------------------------------------------------------
# Always-on: every lib/ VERSION declaration matches lib/Paws.pm.
# ---------------------------------------------------------------------------
{
    my $current = read_version("$repo_root/lib/Paws.pm");
    my ($rc, $err, $gh) = run_bump('--repo-root', $repo_root, '--version', $current, '--dry-run', '--allow-current');
    is($rc, 0, 'real tree: --allow-current --dry-run against current VERSION succeeds');
    like($err, qr/current_version=\Q$current\E/, "real tree reports current_version=$current");
    like($gh, qr/^files=lib\/Paws\.pm,lib\/Paws\/RDS\/AuthToken\.pm,lib\/Paws\/S3\/Presigner\.pm$/m,
        'real tree discovers the three VERSION files');
}

# ---------------------------------------------------------------------------
# Format validation
# ---------------------------------------------------------------------------
{
    my $tmp = tempdir(CLEANUP => 1);
    write_tree($tmp, core => '1.0.0');

    my ($rc, $err) = run_bump('--repo-root', $tmp, '--version', 'v1.2.0');
    isnt($rc, 0, 'leading v is rejected');
    like($err, qr/must not include a leading v/, 'leading v error mentions the v prefix');

    ($rc, $err) = run_bump('--repo-root', $tmp, '--version', '1.2');
    isnt($rc, 0, 'two-component version is rejected');
    like($err, qr/is not X\.Y\.Z/, 'two-component error names the expected form');

    ($rc, $err) = run_bump('--repo-root', $tmp, '--version', '1.02.0');
    isnt($rc, 0, 'leading zeros are rejected');

    ($rc, $err) = run_bump('--repo-root', $tmp, '--version', '1.2.0-beta1');
    isnt($rc, 0, 'arbitrary prerelease suffix is rejected');

    ($rc, $err) = run_bump('--repo-root', $tmp, '--version', '1.2.0-rc0');
    isnt($rc, 0, 'rc0 is rejected');

    ($rc, $err) = run_bump('--repo-root', $tmp, '--version', '');
    isnt($rc, 0, 'empty version is rejected');

    ($rc, $err) = run_bump('--repo-root', $tmp, '--version', ' 1.2.0 ');
    is($rc, 0, 'surrounding whitespace is trimmed');
    is(read_version("$tmp/lib/Paws.pm"), '1.2.0', 'trimmed version is written');
}

# ---------------------------------------------------------------------------
# Comparison + writes
# ---------------------------------------------------------------------------
{
    my $tmp = tempdir(CLEANUP => 1);
    write_tree($tmp, core => '1.0.0');

    my ($rc, $err) = run_bump('--repo-root', $tmp, '--version', '0.9.0');
    isnt($rc, 0, 'older version is rejected');
    like($err, qr/is not greater than current package VERSION=1\.0\.0/, 'older version names current');
    is(read_version("$tmp/lib/Paws.pm"), '1.0.0', 'rejected bump does not write');

    ($rc, $err) = run_bump('--repo-root', $tmp, '--version', '1.0.0');
    isnt($rc, 0, 'equal version without --allow-current is rejected');

    ($rc, $err) = run_bump('--repo-root', $tmp, '--version', '1.0.0', '--allow-current');
    is($rc, 0, 'equal version with --allow-current succeeds');
    like($err, qr/updated=0/, 'equal version does not report a write');
    is(read_version("$tmp/lib/Paws.pm"), '1.0.0', 'allow-current does not rewrite files');
}

{
    my $tmp = tempdir(CLEANUP => 1);
    write_tree($tmp, core => '1.0.0');

    my ($rc, $err, $gh) = run_bump('--repo-root', $tmp, '--version', '1.2.0', '--dry-run');
    is($rc, 0, 'dry-run of a valid bump succeeds');
    like($err, qr/updated=1/, 'dry-run still reports updated=1 (would write)');
    is(read_version("$tmp/lib/Paws.pm"), '1.0.0', 'dry-run does not write Paws.pm');
    is(read_version("$tmp/lib/Paws/S3/Presigner.pm"), '1.0.0', 'dry-run does not write Presigner');
    like($gh, qr/^proposed_version=1\.2\.0$/m, 'GITHUB_OUTPUT proposed_version');
    like($gh, qr/^tag=v1\.2\.0$/m, 'GITHUB_OUTPUT tag');
    like($gh, qr/^is_prerelease=false$/m, 'stable release is not a prerelease');
}

{
    my $tmp = tempdir(CLEANUP => 1);
    write_tree($tmp, core => '1.0.0');

    my ($rc, $err, $gh) = run_bump('--repo-root', $tmp, '--version', '1.2.0');
    is($rc, 0, 'valid bump writes files');
    is(read_version("$tmp/lib/Paws.pm"), '1.2.0', 'Paws.pm bumped');
    is(read_version("$tmp/lib/Paws/S3/Presigner.pm"), '1.2.0', 'Presigner bumped');
    is(read_version("$tmp/lib/Paws/RDS/AuthToken.pm"), '1.2.0', 'AuthToken bumped');
    like($gh, qr/^updated=true$/m, 'GITHUB_OUTPUT updated=true');
}

{
    my $tmp = tempdir(CLEANUP => 1);
    write_tree($tmp, core => '1.0.0');

    my ($rc, $err, $gh) = run_bump('--repo-root', $tmp, '--version', '1.2.0-rc2');
    is($rc, 0, 'rc bump is accepted');
    is(read_version("$tmp/lib/Paws.pm"), '1.2.0-rc2', 'rc version written');
    like($gh, qr/^is_prerelease=true$/m, 'rc is marked prerelease');
}

{
    my $tmp = tempdir(CLEANUP => 1);
    write_tree($tmp, core => '1.2.0-rc1');

    my ($rc, $err) = run_bump('--repo-root', $tmp, '--version', '1.2.0-rc2');
    is($rc, 0, 'rc2 > rc1');
    is(read_version("$tmp/lib/Paws.pm"), '1.2.0-rc2', 'rc1 bumped to rc2');
}

{
    my $tmp = tempdir(CLEANUP => 1);
    write_tree($tmp, core => '1.2.0-rc2');

    my ($rc, $err) = run_bump('--repo-root', $tmp, '--version', '1.2.0-rc1');
    isnt($rc, 0, 'rc1 < rc2 is rejected');

    ($rc, $err) = run_bump('--repo-root', $tmp, '--version', '1.2.0');
    is($rc, 0, 'stable 1.2.0 > 1.2.0-rc2');
    is(read_version("$tmp/lib/Paws.pm"), '1.2.0', 'rc2 bumped to stable');
}

{
    my $tmp = tempdir(CLEANUP => 1);
    write_tree($tmp, core => '1.0.0', presigner => '1.1.0');

    my ($rc, $err) = run_bump('--repo-root', $tmp, '--version', '1.2.0');
    isnt($rc, 0, 'inconsistent VERSION files are rejected');
    like($err, qr/does not match lib\/Paws\.pm VERSION=1\.0\.0/, 'inconsistency names Paws.pm');
    is(read_version("$tmp/lib/Paws.pm"), '1.0.0', 'inconsistent tree is not written');
}

# ---------------------------------------------------------------------------
# --require-new-tag
# ---------------------------------------------------------------------------
{
    my $tmp = tempdir(CLEANUP => 1);
    write_tree($tmp, core => '1.0.0');
    init_git($tmp, 'v1.0.0-rc9', 'v1.1.0');

    my ($rc, $err) = run_bump('--repo-root', $tmp, '--version', '1.1.0', '--require-new-tag');
    isnt($rc, 0, 'existing tag v1.1.0 is rejected');
    like($err, qr/tag=v1\.1\.0 already exists/, 'existing-tag error names the tag');
    is(read_version("$tmp/lib/Paws.pm"), '1.0.0', 'rejected tag check does not write');

    ($rc, $err) = run_bump('--repo-root', $tmp, '--version', '1.0.1', '--require-new-tag');
    isnt($rc, 0, '1.0.1 is rejected when v1.1.0 already exists');
    like($err, qr/is not greater than existing tag v1\.1\.0/, 'tag-floor error names the latest tag');

    ($rc, $err) = run_bump('--repo-root', $tmp, '--version', '1.2.0', '--require-new-tag');
    is($rc, 0, '1.2.0 is accepted when latest tag is v1.1.0');
    is(read_version("$tmp/lib/Paws.pm"), '1.2.0', 'accepted tag check writes files');
}

{
    my $tmp = tempdir(CLEANUP => 1);
    write_tree($tmp, core => '1.2.0');
    init_git($tmp);    # no tags

    my ($rc, $err) = run_bump(
        '--repo-root', $tmp,
        '--version', '1.2.0',
        '--allow-current',
        '--require-new-tag',
    );
    is($rc, 0, 'allow-current + require-new-tag succeeds when the tag is absent');
    like($err, qr/updated=0/, 're-run path does not rewrite files');
}

done_testing;

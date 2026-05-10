#!/usr/bin/env perl
# Cold-fork benchmark: for each service, fork a fresh perl process,
# time `use Paws; Paws->service($svc)`, and report wall/user/sys (ms)
# plus a count of Paws::<svc>::* symbols loaded.
#
# Usage:
#   bench-mat.pl --lib <local-lib> --iters <N> <svc1> <svc2> ...
use strict;
use warnings;
use Time::HiRes qw(gettimeofday tv_interval);
use Getopt::Long;
use POSIX qw(:sys_wait_h);
use IPC::Open3;
use Symbol 'gensym';
use File::Basename;

my $lib   = '';
my $iters = 5;
GetOptions(
    'lib=s'   => \$lib,
    'iters=i' => \$iters,
) or die "bad args\n";
die "--lib required\n" unless $lib;

my @services = @ARGV;
die "need at least one service\n" unless @services;

my $perl = $^X;

sub run_one {
    my ($svc) = @_;
    my $script = <<'PERL';
use strict;
use warnings;
use Time::HiRes qw(gettimeofday tv_interval);
my $svc = shift @ARGV;
my $t0 = [gettimeofday];
my @t0_proc = times();
require Paws;
Paws->import();
Paws->service($svc, region => 'us-east-1');
my @t1_proc = times();
my $wall = tv_interval($t0) * 1000.0;
my $user = ($t1_proc[0] - $t0_proc[0]) * 1000.0;
my $sys  = ($t1_proc[1] - $t0_proc[1]) * 1000.0;
my %seen;
my @stack = ("Paws");
my $count = 0;
while (@stack) {
    my $pkg = shift @stack;
    next if $seen{$pkg}++;
    $count++;
    no strict 'refs';
    my $stash = \%{"${pkg}::"};
    for my $k (keys %$stash) {
        if ($k =~ /::$/) {
            push @stack, $pkg . '::' . substr($k, 0, -2);
        }
    }
}
printf "RESULT wall=%.3f user=%.3f sys=%.3f classes=%d\n", $wall, $user, $sys, $count;
PERL
    # Use only the target lib + the home perl5 cache for shared deps.
    # Crucially, do NOT include any other local-* paws-libs (which would
    # otherwise leak Paws::<svc> .pm files via @INC fall-through).
    my $home_lib = "$ENV{HOME}/perl5/lib/perl5";
    local $ENV{PERL5LIB} = "$lib/lib/perl5:$home_lib";
    local $ENV{PERL_LOCAL_LIB_ROOT} = $lib;
    local $ENV{PATH} = "/usr/bin:/bin:/usr/sbin:/sbin";
    delete local $ENV{PERL_MB_OPT};
    delete local $ENV{PERL_MM_OPT};
    my @cmd = ($perl, '-e', $script, '--', $svc);
    local $ENV{AWS_ACCESS_KEY_ID}     = 'AKIAIOSFODNN7EXAMPLE';
    local $ENV{AWS_SECRET_ACCESS_KEY} = 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY';
    local $ENV{AWS_DEFAULT_REGION}    = 'us-east-1';
    my $err = gensym;
    my $pid = open3(my $in, my $out, $err, @cmd);
    close $in;
    my $stdout = do { local $/; <$out> };
    my $stderr = do { local $/; <$err> };
    waitpid($pid, 0);
    my $exit = $? >> 8;
    if ($exit != 0) {
        warn "child exit=$exit svc=$svc stderr=$stderr\n";
        return { wall => -1, user => -1, sys => -1, classes => -1, error => $stderr };
    }
    if ($stdout =~ /RESULT wall=([\d.]+) user=([\d.]+) sys=([\d.]+) classes=(\d+)/) {
        return { wall => $1+0, user => $2+0, sys => $3+0, classes => $4+0 };
    }
    warn "no RESULT line for $svc; stdout=$stdout stderr=$stderr\n";
    return { wall => -1, user => -1, sys => -1, classes => -1, error => "no result" };
}

sub median {
    my @sorted = sort { $a <=> $b } @_;
    my $n = scalar @sorted;
    return $n % 2 ? $sorted[($n-1)/2] : ($sorted[$n/2-1] + $sorted[$n/2]) / 2;
}

print "service,iter,wall_ms,user_ms,sys_ms,classes\n";
my %agg;
for my $svc (@services) {
    my @walls;
    my @users;
    my @sys;
    my @classes;
    my $svc_failed = 0;
    for my $i (1 .. $iters) {
        my $r = run_one($svc);
        printf "%s,%d,%.3f,%.3f,%.3f,%d\n", $svc, $i, $r->{wall}, $r->{user}, $r->{sys}, $r->{classes};
        if ($r->{wall} < 0) { $svc_failed = 1; last; }
        push @walls,  $r->{wall};
        push @users,  $r->{user};
        push @sys,    $r->{sys};
        push @classes, $r->{classes};
    }
    if ($svc_failed) {
        $agg{$svc} = { wall_med => -1, wall_min => -1, wall_max => -1, user_med => -1, sys_med => -1, classes => -1 };
        next;
    }
    $agg{$svc} = {
        wall_med => median(@walls),
        wall_min => (sort { $a <=> $b } @walls)[0],
        wall_max => (sort { $a <=> $b } @walls)[-1],
        user_med => median(@users),
        sys_med  => median(@sys),
        classes  => $classes[0],
    };
}

print "\nSUMMARY\n";
print "service,wall_med_ms,wall_min_ms,wall_max_ms,user_med_ms,sys_med_ms,classes\n";
for my $svc (@services) {
    my $a = $agg{$svc};
    printf "%s,%.2f,%.2f,%.2f,%.2f,%.2f,%d\n",
        $svc, $a->{wall_med}, $a->{wall_min}, $a->{wall_max}, $a->{user_med}, $a->{sys_med}, $a->{classes};
}

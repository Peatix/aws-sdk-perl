#!/usr/bin/env perl
# A3 load-time micro-benchmark.
#
# Times `use Paws::S3;` (or whichever service) for the concatenated
# single-file prototype. Compare to baseline:
#   - legacy auto-lib full Paws/S3.pm + lazy ops (cold-fork via bench-mat.pl)
#   - current on-demand materialiser (cold-fork via bench-mat.pl)
#   - A3 concat: just `require Paws::S3;` from the concatenated stub
#
# Note: the A3 file is a STUB (op classes have no attribute table),
# so this measures pure compilation of the concatenated source, not
# a full equivalent of the materialised classes.

use strict;
use warnings;
use Time::HiRes qw(gettimeofday tv_interval);
use IPC::Open3;
use Symbol 'gensym';

my @services = qw(SecretsManager S3 SSM SES SQS EC2 CloudWatch Firehose KMS DynamoDB);

print "service\tload_ms_min\tload_ms_med\tload_ms_max\n";

for my $svc (@services) {
    my @times;
    for (1 .. 5) {
        my $script = qq{
            use strict;
            use warnings;
            use Time::HiRes qw(gettimeofday tv_interval);
            my \$t = [gettimeofday];
            require '/tmp/paws-rfc-20260510-081300/installs/A3-concat/lib/Paws/${svc}.pm';
            my \$ms = tv_interval(\$t) * 1000.0;
            printf "RESULT %.3f\\n", \$ms;
        };
        local %ENV = (
            PATH => '/usr/bin:/bin',
            HOME => $ENV{HOME},
            PERL5LIB => "$ENV{HOME}/perl5/lib/perl5:/tmp/paws-perf-bench-rerun/local-new/lib/perl5",
        );
        my $err = gensym;
        my $pid = open3(my $in, my $out, $err, $^X, '-e', $script);
        close $in;
        my $stdout = do { local $/; <$out> };
        my $stderr = do { local $/; <$err> };
        waitpid($pid, 0);
        if ($? != 0) {
            warn "child failed for $svc: stderr=$stderr\n";
            next;
        }
        if ($stdout =~ /RESULT ([\d.]+)/) {
            push @times, $1 + 0;
        }
    }
    next unless @times;
    @times = sort { $a <=> $b } @times;
    my $med = $times[scalar(@times) / 2];
    printf "%s\t%.3f\t%.3f\t%.3f\n", $svc, $times[0], $med, $times[-1];
}

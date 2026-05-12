#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/..";
use integration::helpers qw(skip_unless_integration paws_client unique_name);

skip_unless_integration();

my $paws      = paws_client();
my $cw        = $paws->service('CloudWatch');
my $namespace = 'PawsIntegrationTest';
my $metric    = unique_name('paws-integ-metric');

# CloudWatch metrics are eventually consistent and don't need explicit cleanup.
# Custom metrics expire after 15 months of no new data.

subtest 'PutMetricData' => sub {
  $cw->PutMetricData(
    Namespace  => $namespace,
    MetricData => [
      {
        MetricName => $metric,
        Value      => 42.5,
        Unit       => 'Count',
        Dimensions => [
          { Name => 'TestId', Value => $metric },
        ],
      },
    ],
  );
  ok(1, "put metric namespace=$namespace metric=$metric value=42.5");
};

subtest 'GetMetricData' => sub {
  # CloudWatch data may take a moment to become queryable
  sleep 2;

  my $now  = time();
  my $result = $cw->GetMetricData(
    StartTime         => _iso8601($now - 300),
    EndTime           => _iso8601($now + 60),
    MetricDataQueries => [
      {
        Id         => 'testquery',
        MetricStat => {
          Metric => {
            Namespace  => $namespace,
            MetricName => $metric,
            Dimensions => [
              { Name => 'TestId', Value => $metric },
            ],
          },
          Period => 60,
          Stat   => 'Sum',
        },
      },
    ],
  );

  ok($result->MetricDataResults, 'GetMetricData returned results');

  SKIP: {
    my $results = $result->MetricDataResults;
    skip 'no metric data results', 1 unless $results && @$results;

    my $query_result = $results->[0];
    is($query_result->Id, 'testquery', 'query result has expected id');
    # Values may be empty if data hasn't propagated yet — this is expected
    diag "status=" . ($query_result->StatusCode // 'undef')
       . " values_count=" . scalar @{$query_result->Values // []};
  }
};

subtest 'ListMetrics' => sub {
  my $result = $cw->ListMetrics(
    Namespace  => $namespace,
    MetricName => $metric,
  );

  # ListMetrics may take time to reflect new metrics, so we just
  # verify the API call succeeds and returns the expected structure
  ok(defined $result->Metrics, 'ListMetrics returned Metrics array');
  diag "listed_metrics_count=" . scalar @{$result->Metrics // []};
};

sub _iso8601 {
  my ($epoch) = @_;
  my @t = gmtime($epoch);
  return sprintf('%04d-%02d-%02dT%02d:%02d:%02dZ',
    $t[5] + 1900, $t[4] + 1, $t[3], $t[2], $t[1], $t[0]);
}

done_testing();

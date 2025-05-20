
package Paws::ApplicationInsights::DescribeWorkloadResponse;
  use Moose;
  has WorkloadConfiguration => (is => 'ro', isa => 'Paws::ApplicationInsights::WorkloadConfiguration');
  has WorkloadId => (is => 'ro', isa => 'Str');
  has WorkloadRemarks => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeWorkloadResponse

=head1 ATTRIBUTES


=head2 WorkloadConfiguration => L<Paws::ApplicationInsights::WorkloadConfiguration>

The configuration settings of the workload. The value is the escaped
JSON of the configuration.


=head2 WorkloadId => Str

The ID of the workload.


=head2 WorkloadRemarks => Str

If logging is supported for the resource type, shows whether the
component has configured logs to be monitored.


=head2 _request_id => Str


=cut

1;

package Paws::ApplicationInsights::ListWorkloadsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WorkloadList => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationInsights::Workload]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::ListWorkloadsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to request the next page of results.


=head2 WorkloadList => ArrayRef[L<Paws::ApplicationInsights::Workload>]

The list of workloads.


=head2 _request_id => Str


=cut

1;
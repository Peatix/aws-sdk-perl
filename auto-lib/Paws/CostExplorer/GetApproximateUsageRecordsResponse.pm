
package Paws::CostExplorer::GetApproximateUsageRecordsResponse;
  use Moose;
  has LookbackPeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval');
  has Services => (is => 'ro', isa => 'Paws::CostExplorer::ApproximateUsageRecordsPerService');
  has TotalRecords => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetApproximateUsageRecordsResponse

=head1 ATTRIBUTES


=head2 LookbackPeriod => L<Paws::CostExplorer::DateInterval>

The lookback period that's used for the estimation.


=head2 Services => L<Paws::CostExplorer::ApproximateUsageRecordsPerService>

The service metadata for the service or services in the response.


=head2 TotalRecords => Int

The total number of usage records for all services in the services
list.


=head2 _request_id => Str


=cut

1;
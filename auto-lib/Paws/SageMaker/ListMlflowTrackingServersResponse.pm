
package Paws::SageMaker::ListMlflowTrackingServersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TrackingServerSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::TrackingServerSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListMlflowTrackingServersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the previous response was truncated, you will receive this token.
Use it in your next request to receive the next set of results.


=head2 TrackingServerSummaries => ArrayRef[L<Paws::SageMaker::TrackingServerSummary>]

A list of tracking servers according to chosen filters.


=head2 _request_id => Str


=cut

1;
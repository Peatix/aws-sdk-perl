
package Paws::SageMaker::ListHubsResponse;
  use Moose;
  has HubSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::HubInfo]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListHubsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HubSummaries => ArrayRef[L<Paws::SageMaker::HubInfo>]

The summaries of the listed hubs.


=head2 NextToken => Str

If the response is truncated, SageMaker returns this token. To retrieve
the next set of hubs, use it in the subsequent request.


=head2 _request_id => Str


=cut

1;
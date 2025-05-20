
package Paws::SageMaker::ListHubContentVersionsResponse;
  use Moose;
  has HubContentSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::HubContentInfo]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListHubContentVersionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HubContentSummaries => ArrayRef[L<Paws::SageMaker::HubContentInfo>]

The summaries of the listed hub content versions.


=head2 NextToken => Str

If the response is truncated, SageMaker returns this token. To retrieve
the next set of hub content versions, use it in the subsequent request.


=head2 _request_id => Str


=cut

1;
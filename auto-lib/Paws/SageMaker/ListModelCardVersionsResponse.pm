
package Paws::SageMaker::ListModelCardVersionsResponse;
  use Moose;
  has ModelCardVersionSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ModelCardVersionSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModelCardVersionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelCardVersionSummaryList => ArrayRef[L<Paws::SageMaker::ModelCardVersionSummary>]

The summaries of the listed versions of the model card.


=head2 NextToken => Str

If the response is truncated, SageMaker returns this token. To retrieve
the next set of model card versions, use it in the subsequent request.


=head2 _request_id => Str


=cut

1;
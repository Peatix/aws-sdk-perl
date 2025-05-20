
package Paws::SageMaker::ListModelCardsResponse;
  use Moose;
  has ModelCardSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ModelCardSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModelCardsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelCardSummaries => ArrayRef[L<Paws::SageMaker::ModelCardSummary>]

The summaries of the listed model cards.


=head2 NextToken => Str

If the response is truncated, SageMaker returns this token. To retrieve
the next set of model cards, use it in the subsequent request.


=head2 _request_id => Str


=cut

1;
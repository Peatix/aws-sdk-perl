
package Paws::Comprehend::BatchDetectTargetedSentimentResponse;
  use Moose;
  has ErrorList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::BatchItemError]', required => 1);
  has ResultList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::BatchDetectTargetedSentimentItemResult]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::BatchDetectTargetedSentimentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ErrorList => ArrayRef[L<Paws::Comprehend::BatchItemError>]

List of errors that the operation can return.


=head2 B<REQUIRED> ResultList => ArrayRef[L<Paws::Comprehend::BatchDetectTargetedSentimentItemResult>]

A list of objects containing the results of the operation. The results
are sorted in ascending order by the C<Index> field and match the order
of the documents in the input list. If all of the documents contain an
error, the C<ResultList> is empty.


=head2 _request_id => Str


=cut

1;
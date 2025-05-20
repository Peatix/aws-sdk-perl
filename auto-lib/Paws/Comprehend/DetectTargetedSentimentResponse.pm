
package Paws::Comprehend::DetectTargetedSentimentResponse;
  use Moose;
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::TargetedSentimentEntity]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectTargetedSentimentResponse

=head1 ATTRIBUTES


=head2 Entities => ArrayRef[L<Paws::Comprehend::TargetedSentimentEntity>]

Targeted sentiment analysis for each of the entities identified in the
input text.


=head2 _request_id => Str


=cut

1;
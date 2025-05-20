
package Paws::Comprehend::DetectToxicContentResponse;
  use Moose;
  has ResultList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::ToxicLabels]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectToxicContentResponse

=head1 ATTRIBUTES


=head2 ResultList => ArrayRef[L<Paws::Comprehend::ToxicLabels>]

Results of the content moderation analysis. Each entry in the results
list contains a list of toxic content types identified in the text,
along with a confidence score for each content type. The results list
also includes a toxicity score for each entry in the results list.


=head2 _request_id => Str


=cut

1;
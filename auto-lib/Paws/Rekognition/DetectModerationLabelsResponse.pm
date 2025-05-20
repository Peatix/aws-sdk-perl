
package Paws::Rekognition::DetectModerationLabelsResponse;
  use Moose;
  has ContentTypes => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::ContentType]');
  has HumanLoopActivationOutput => (is => 'ro', isa => 'Paws::Rekognition::HumanLoopActivationOutput');
  has ModerationLabels => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::ModerationLabel]');
  has ModerationModelVersion => (is => 'ro', isa => 'Str');
  has ProjectVersion => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectModerationLabelsResponse

=head1 ATTRIBUTES


=head2 ContentTypes => ArrayRef[L<Paws::Rekognition::ContentType>]

A list of predicted results for the type of content an image contains.
For example, the image content might be from animation, sports, or a
video game.


=head2 HumanLoopActivationOutput => L<Paws::Rekognition::HumanLoopActivationOutput>

Shows the results of the human in the loop evaluation.


=head2 ModerationLabels => ArrayRef[L<Paws::Rekognition::ModerationLabel>]

Array of detected Moderation labels. For video operations, this
includes the time, in milliseconds from the start of the video, they
were detected.


=head2 ModerationModelVersion => Str

Version number of the base moderation detection model that was used to
detect unsafe content.


=head2 ProjectVersion => Str

Identifier of the custom adapter that was used during inference. If
during inference the adapter was EXPIRED, then the parameter will not
be returned, indicating that a base moderation detection project
version was used.


=head2 _request_id => Str


=cut

1;
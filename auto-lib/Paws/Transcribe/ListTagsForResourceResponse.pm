
package Paws::Transcribe::ListTagsForResourceResponse;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) specified in your request.


=head2 Tags => ArrayRef[L<Paws::Transcribe::Tag>]

Lists all tags associated with the given transcription job, vocabulary,
model, or resource.


=head2 _request_id => Str


=cut

1;
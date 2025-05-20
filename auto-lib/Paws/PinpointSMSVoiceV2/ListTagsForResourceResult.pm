
package Paws::PinpointSMSVoiceV2::ListTagsForResourceResult;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::ListTagsForResourceResult

=head1 ATTRIBUTES


=head2 ResourceArn => Str

The ARN of the resource.


=head2 Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]

An array of key and value pair tags that are associated with the
resource.


=head2 _request_id => Str


=cut

1;
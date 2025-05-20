
package Paws::PinpointSMSVoiceV2::CreateOptOutListResult;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has OptOutListArn => (is => 'ro', isa => 'Str');
  has OptOutListName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::CreateOptOutListResult

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The time when the pool was created, in UNIX epoch time
(https://www.epochconverter.com/) format.


=head2 OptOutListArn => Str

The Amazon Resource Name (ARN) for the OptOutList.


=head2 OptOutListName => Str

The name of the new OptOutList.


=head2 Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]

An array of tags (key and value pairs) associated with the new
OptOutList.


=head2 _request_id => Str


=cut

1;
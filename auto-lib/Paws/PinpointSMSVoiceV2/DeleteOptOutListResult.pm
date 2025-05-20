
package Paws::PinpointSMSVoiceV2::DeleteOptOutListResult;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has OptOutListArn => (is => 'ro', isa => 'Str');
  has OptOutListName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteOptOutListResult

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The time when the OptOutList was created, in UNIX epoch time
(https://www.epochconverter.com/) format.


=head2 OptOutListArn => Str

The Amazon Resource Name (ARN) of the OptOutList that was removed.


=head2 OptOutListName => Str

The name of the OptOutList that was removed.


=head2 _request_id => Str


=cut

1;
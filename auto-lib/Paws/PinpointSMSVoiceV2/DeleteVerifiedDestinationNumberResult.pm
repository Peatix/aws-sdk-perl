
package Paws::PinpointSMSVoiceV2::DeleteVerifiedDestinationNumberResult;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has DestinationPhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has VerifiedDestinationNumberArn => (is => 'ro', isa => 'Str', required => 1);
  has VerifiedDestinationNumberId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteVerifiedDestinationNumberResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedTimestamp => Str

The time when the destination phone number was created, in UNIX epoch
time (https://www.epochconverter.com/) format.


=head2 B<REQUIRED> DestinationPhoneNumber => Str

The verified destination phone number, in E.164 format.


=head2 B<REQUIRED> VerifiedDestinationNumberArn => Str

The Amazon Resource Name (ARN) for the verified destination phone
number.


=head2 B<REQUIRED> VerifiedDestinationNumberId => Str

The unique identifier for the verified destination phone number.


=head2 _request_id => Str


=cut

1;
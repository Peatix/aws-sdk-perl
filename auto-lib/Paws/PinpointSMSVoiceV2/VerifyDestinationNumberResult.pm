
package Paws::PinpointSMSVoiceV2::VerifyDestinationNumberResult;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has DestinationPhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has VerifiedDestinationNumberArn => (is => 'ro', isa => 'Str', required => 1);
  has VerifiedDestinationNumberId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::VerifyDestinationNumberResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedTimestamp => Str

The time when the destination phone number was created, in UNIX epoch
time (https://www.epochconverter.com/) format.


=head2 B<REQUIRED> DestinationPhoneNumber => Str

The phone number in E.164 format.


=head2 B<REQUIRED> Status => Str

The status for being able to send messages to the phone number.

Valid values are: C<"PENDING">, C<"VERIFIED">
=head2 B<REQUIRED> VerifiedDestinationNumberArn => Str

The Amazon Resource Name (ARN) for the verified destination phone
number.


=head2 B<REQUIRED> VerifiedDestinationNumberId => Str

The unique identifier for the verified destination phone number.


=head2 _request_id => Str


=cut

1;
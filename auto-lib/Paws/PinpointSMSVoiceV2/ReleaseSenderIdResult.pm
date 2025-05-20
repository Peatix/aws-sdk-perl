
package Paws::PinpointSMSVoiceV2::ReleaseSenderIdResult;
  use Moose;
  has IsoCountryCode => (is => 'ro', isa => 'Str', required => 1);
  has MessageTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has MonthlyLeasingPrice => (is => 'ro', isa => 'Str', required => 1);
  has Registered => (is => 'ro', isa => 'Bool', required => 1);
  has RegistrationId => (is => 'ro', isa => 'Str');
  has SenderId => (is => 'ro', isa => 'Str', required => 1);
  has SenderIdArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::ReleaseSenderIdResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> IsoCountryCode => Str

The two-character code, in ISO 3166-1 alpha-2 format, for the country
or region.


=head2 B<REQUIRED> MessageTypes => ArrayRef[Str|Undef]

The type of message. Valid values are TRANSACTIONAL for messages that
are critical or time-sensitive and PROMOTIONAL for messages that aren't
critical or time-sensitive.


=head2 B<REQUIRED> MonthlyLeasingPrice => Str

The monthly price, in US dollars, to lease the sender ID.


=head2 B<REQUIRED> Registered => Bool

True if the sender ID is registered.


=head2 RegistrationId => Str

The unique identifier for the registration.


=head2 B<REQUIRED> SenderId => Str

The sender ID that was released.


=head2 B<REQUIRED> SenderIdArn => Str

The Amazon Resource Name (ARN) associated with the SenderId.


=head2 _request_id => Str


=cut

1;
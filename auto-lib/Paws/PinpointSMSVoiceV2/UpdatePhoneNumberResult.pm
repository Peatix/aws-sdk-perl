
package Paws::PinpointSMSVoiceV2::UpdatePhoneNumberResult;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool');
  has IsoCountryCode => (is => 'ro', isa => 'Str');
  has MessageType => (is => 'ro', isa => 'Str');
  has MonthlyLeasingPrice => (is => 'ro', isa => 'Str');
  has NumberCapabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NumberType => (is => 'ro', isa => 'Str');
  has OptOutListName => (is => 'ro', isa => 'Str');
  has PhoneNumber => (is => 'ro', isa => 'Str');
  has PhoneNumberArn => (is => 'ro', isa => 'Str');
  has PhoneNumberId => (is => 'ro', isa => 'Str');
  has RegistrationId => (is => 'ro', isa => 'Str');
  has SelfManagedOptOutsEnabled => (is => 'ro', isa => 'Bool');
  has Status => (is => 'ro', isa => 'Str');
  has TwoWayChannelArn => (is => 'ro', isa => 'Str');
  has TwoWayChannelRole => (is => 'ro', isa => 'Str');
  has TwoWayEnabled => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::UpdatePhoneNumberResult

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The time when the phone number was created, in UNIX epoch time
(https://www.epochconverter.com/) format.


=head2 DeletionProtectionEnabled => Bool

When set to true the phone number can't be deleted.


=head2 IsoCountryCode => Str

The two-character code, in ISO 3166-1 alpha-2 format, for the country
or region.


=head2 MessageType => Str

The type of message. Valid values are TRANSACTIONAL for messages that
are critical or time-sensitive and PROMOTIONAL for messages that aren't
critical or time-sensitive.

Valid values are: C<"TRANSACTIONAL">, C<"PROMOTIONAL">
=head2 MonthlyLeasingPrice => Str

The monthly leasing price of the phone number, in US dollars.


=head2 NumberCapabilities => ArrayRef[Str|Undef]

Specifies if the number could be used for text messages, voice or both.


=head2 NumberType => Str

The type of number that was requested.

Valid values are: C<"SHORT_CODE">, C<"LONG_CODE">, C<"TOLL_FREE">, C<"TEN_DLC">, C<"SIMULATOR">
=head2 OptOutListName => Str

The name of the OptOutList associated with the phone number.


=head2 PhoneNumber => Str

The phone number that was updated.


=head2 PhoneNumberArn => Str

The Amazon Resource Name (ARN) of the updated phone number.


=head2 PhoneNumberId => Str

The unique identifier of the phone number.


=head2 RegistrationId => Str

The unique identifier for the registration.


=head2 SelfManagedOptOutsEnabled => Bool

This is true if self managed opt-out are enabled.


=head2 Status => Str

The current status of the request.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"ASSOCIATING">, C<"DISASSOCIATING">, C<"DELETED">
=head2 TwoWayChannelArn => Str

The Amazon Resource Name (ARN) of the two way channel.


=head2 TwoWayChannelRole => Str

An optional IAM Role Arn for a service to assume, to be able to post
inbound SMS messages.


=head2 TwoWayEnabled => Bool

By default this is set to false. When set to true you can receive
incoming text messages from your end recipients.


=head2 _request_id => Str


=cut

1;
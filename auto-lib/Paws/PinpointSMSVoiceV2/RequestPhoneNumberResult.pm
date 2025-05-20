
package Paws::PinpointSMSVoiceV2::RequestPhoneNumberResult;
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
  has PoolId => (is => 'ro', isa => 'Str');
  has RegistrationId => (is => 'ro', isa => 'Str');
  has SelfManagedOptOutsEnabled => (is => 'ro', isa => 'Bool');
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::Tag]');
  has TwoWayChannelArn => (is => 'ro', isa => 'Str');
  has TwoWayChannelRole => (is => 'ro', isa => 'Str');
  has TwoWayEnabled => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::RequestPhoneNumberResult

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The time when the phone number was created, in UNIX epoch time
(https://www.epochconverter.com/) format.


=head2 DeletionProtectionEnabled => Bool

By default this is set to false. When set to true the phone number
can't be deleted.


=head2 IsoCountryCode => Str

The two-character code, in ISO 3166-1 alpha-2 format, for the country
or region.


=head2 MessageType => Str

The type of message. Valid values are TRANSACTIONAL for messages that
are critical or time-sensitive and PROMOTIONAL for messages that aren't
critical or time-sensitive.

Valid values are: C<"TRANSACTIONAL">, C<"PROMOTIONAL">
=head2 MonthlyLeasingPrice => Str

The monthly price, in US dollars, to lease the phone number.


=head2 NumberCapabilities => ArrayRef[Str|Undef]

Indicates if the phone number will be used for text messages, voice
messages or both.


=head2 NumberType => Str

The type of number that was released.

Valid values are: C<"LONG_CODE">, C<"TOLL_FREE">, C<"TEN_DLC">, C<"SIMULATOR">
=head2 OptOutListName => Str

The name of the OptOutList that is associated with the requested phone
number.


=head2 PhoneNumber => Str

The new phone number that was requested.


=head2 PhoneNumberArn => Str

The Amazon Resource Name (ARN) of the requested phone number.


=head2 PhoneNumberId => Str

The unique identifier of the new phone number.


=head2 PoolId => Str

The unique identifier of the pool associated with the phone number


=head2 RegistrationId => Str

The unique identifier for the registration.


=head2 SelfManagedOptOutsEnabled => Bool

By default this is set to false. When an end recipient sends a message
that begins with HELP or STOP to one of your dedicated numbers, AWS End
User Messaging SMS and Voice automatically replies with a customizable
message and adds the end recipient to the OptOutList. When set to true
you're responsible for responding to HELP and STOP requests. You're
also responsible for tracking and honoring opt-out requests.


=head2 Status => Str

The current status of the request.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"ASSOCIATING">, C<"DISASSOCIATING">, C<"DELETED">
=head2 Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]

An array of key and value pair tags that are associated with the phone
number.


=head2 TwoWayChannelArn => Str

The ARN used to identify the two way channel.


=head2 TwoWayChannelRole => Str

An optional IAM Role Arn for a service to assume, to be able to post
inbound SMS messages.


=head2 TwoWayEnabled => Bool

By default this is set to false. When set to true you can receive
incoming text messages from your end recipients.


=head2 _request_id => Str


=cut

1;
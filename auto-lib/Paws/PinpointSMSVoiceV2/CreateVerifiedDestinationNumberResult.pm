
package Paws::PinpointSMSVoiceV2::CreateVerifiedDestinationNumberResult;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has DestinationPhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::Tag]');
  has VerifiedDestinationNumberArn => (is => 'ro', isa => 'Str', required => 1);
  has VerifiedDestinationNumberId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::CreateVerifiedDestinationNumberResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedTimestamp => Str

The time when the verified phone number was created, in UNIX epoch time
(https://www.epochconverter.com/) format.


=head2 B<REQUIRED> DestinationPhoneNumber => Str

The verified destination phone number, in E.164 format.


=head2 B<REQUIRED> Status => Str

The status of the verified destination phone number.

=over

=item *

C<PENDING>: The phone number hasn't been verified yet.

=item *

C<VERIFIED>: The phone number is verified and can receive messages.

=back


Valid values are: C<"PENDING">, C<"VERIFIED">
=head2 Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]

An array of tags (key and value pairs) to associate with the
destination number.


=head2 B<REQUIRED> VerifiedDestinationNumberArn => Str

The Amazon Resource Name (ARN) for the verified destination phone
number.


=head2 B<REQUIRED> VerifiedDestinationNumberId => Str

The unique identifier for the verified destination phone number.


=head2 _request_id => Str


=cut

1;
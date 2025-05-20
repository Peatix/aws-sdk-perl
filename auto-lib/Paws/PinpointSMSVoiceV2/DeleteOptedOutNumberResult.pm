
package Paws::PinpointSMSVoiceV2::DeleteOptedOutNumberResult;
  use Moose;
  has EndUserOptedOut => (is => 'ro', isa => 'Bool');
  has OptedOutNumber => (is => 'ro', isa => 'Str');
  has OptedOutTimestamp => (is => 'ro', isa => 'Str');
  has OptOutListArn => (is => 'ro', isa => 'Str');
  has OptOutListName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteOptedOutNumberResult

=head1 ATTRIBUTES


=head2 EndUserOptedOut => Bool

This is true if it was the end user who requested their phone number be
removed.


=head2 OptedOutNumber => Str

The phone number that was removed from the OptOutList.


=head2 OptedOutTimestamp => Str

The time that the number was removed at, in UNIX epoch time
(https://www.epochconverter.com/) format.


=head2 OptOutListArn => Str

The OptOutListArn that the phone number was removed from.


=head2 OptOutListName => Str

The OptOutListName that the phone number was removed from.


=head2 _request_id => Str


=cut

1;
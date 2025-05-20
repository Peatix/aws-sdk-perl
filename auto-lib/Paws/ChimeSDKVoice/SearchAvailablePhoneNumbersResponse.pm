
package Paws::ChimeSDKVoice::SearchAvailablePhoneNumbersResponse;
  use Moose;
  has E164PhoneNumbers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::SearchAvailablePhoneNumbersResponse

=head1 ATTRIBUTES


=head2 E164PhoneNumbers => ArrayRef[Str|Undef]

Confines a search to just the phone numbers in the E.164 format.


=head2 NextToken => Str

The token used to return the next page of results.


=head2 _request_id => Str


=cut



package Paws::ChimeSDKVoice::ListPhoneNumbersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PhoneNumbers => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::PhoneNumber]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ListPhoneNumbersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to return the next page of results.


=head2 PhoneNumbers => ArrayRef[L<Paws::ChimeSDKVoice::PhoneNumber>]

The phone number details.


=head2 _request_id => Str


=cut



package Paws::ChimeSDKVoice::ListSupportedPhoneNumberCountriesResponse;
  use Moose;
  has PhoneNumberCountries => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::PhoneNumberCountry]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ListSupportedPhoneNumberCountriesResponse

=head1 ATTRIBUTES


=head2 PhoneNumberCountries => ArrayRef[L<Paws::ChimeSDKVoice::PhoneNumberCountry>]

The supported phone number countries.


=head2 _request_id => Str


=cut


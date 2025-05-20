
package Paws::ChimeSDKVoice::ValidateE911AddressResponse;
  use Moose;
  has Address => (is => 'ro', isa => 'Paws::ChimeSDKVoice::Address');
  has AddressExternalId => (is => 'ro', isa => 'Str');
  has CandidateAddressList => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::CandidateAddress]');
  has ValidationResult => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ValidateE911AddressResponse

=head1 ATTRIBUTES


=head2 Address => L<Paws::ChimeSDKVoice::Address>

The validated address.


=head2 AddressExternalId => Str

The ID that represents the address.


=head2 CandidateAddressList => ArrayRef[L<Paws::ChimeSDKVoice::CandidateAddress>]

The list of address suggestions..


=head2 ValidationResult => Int

Number indicating the result of address validation.

Each possible result is defined as follows:

=over

=item *

C<0> - Address validation succeeded.

=item *

C<1> - Address validation succeeded. The address was a close enough
match and has been corrected as part of the address object.

=item *

C<2> - Address validation failed. You should re-submit the validation
request with candidates from the C<CandidateAddressList> result, if
it's a close match.

=back



=head2 _request_id => Str


=cut



package Paws::KMS::VerifyMacResponse;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str');
  has MacAlgorithm => (is => 'ro', isa => 'Str');
  has MacValid => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::VerifyMacResponse

=head1 ATTRIBUTES


=head2 KeyId => Str

The HMAC KMS key used in the verification.


=head2 MacAlgorithm => Str

The MAC algorithm used in the verification.

Valid values are: C<"HMAC_SHA_224">, C<"HMAC_SHA_256">, C<"HMAC_SHA_384">, C<"HMAC_SHA_512">
=head2 MacValid => Bool

A Boolean value that indicates whether the HMAC was verified. A value
of C<True> indicates that the HMAC (C<Mac>) was generated with the
specified C<Message>, HMAC KMS key (C<KeyID>) and C<MacAlgorithm.>.

If the HMAC is not verified, the C<VerifyMac> operation fails with a
C<KMSInvalidMacException> exception. This exception indicates that one
or more of the inputs changed since the HMAC was computed.


=head2 _request_id => Str


=cut

1;
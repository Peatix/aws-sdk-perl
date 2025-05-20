
package Paws::KMS::GenerateMacResponse;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str');
  has Mac => (is => 'ro', isa => 'Str');
  has MacAlgorithm => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateMacResponse

=head1 ATTRIBUTES


=head2 KeyId => Str

The HMAC KMS key used in the operation.


=head2 Mac => Str

The hash-based message authentication code (HMAC) that was generated
for the specified message, HMAC KMS key, and MAC algorithm.

This is the standard, raw HMAC defined in RFC 2104
(https://datatracker.ietf.org/doc/html/rfc2104).


=head2 MacAlgorithm => Str

The MAC algorithm that was used to generate the HMAC.

Valid values are: C<"HMAC_SHA_224">, C<"HMAC_SHA_256">, C<"HMAC_SHA_384">, C<"HMAC_SHA_512">
=head2 _request_id => Str


=cut

1;
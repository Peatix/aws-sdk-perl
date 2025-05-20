
package Paws::PaymentCryptography::ImportKeyOutput;
  use Moose;
  has Key => (is => 'ro', isa => 'Paws::PaymentCryptography::Key', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::ImportKeyOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => L<Paws::PaymentCryptography::Key>

The C<KeyARN> of the key material imported within Amazon Web Services
Payment Cryptography.


=head2 _request_id => Str


=cut

1;
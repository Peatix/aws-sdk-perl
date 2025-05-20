
package Paws::PaymentCryptography::StartKeyUsageOutput;
  use Moose;
  has Key => (is => 'ro', isa => 'Paws::PaymentCryptography::Key', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::StartKeyUsageOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => L<Paws::PaymentCryptography::Key>

The C<KeyARN> of the Amazon Web Services Payment Cryptography key
activated for use.


=head2 _request_id => Str


=cut

1;
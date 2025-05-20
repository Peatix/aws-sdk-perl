
package Paws::PaymentCryptography::GetKeyOutput;
  use Moose;
  has Key => (is => 'ro', isa => 'Paws::PaymentCryptography::Key', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::GetKeyOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => L<Paws::PaymentCryptography::Key>

The key material, including the immutable and mutable data for the key.


=head2 _request_id => Str


=cut

1;
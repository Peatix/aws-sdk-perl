
package Paws::PaymentCryptography::ExportKeyOutput;
  use Moose;
  has WrappedKey => (is => 'ro', isa => 'Paws::PaymentCryptography::WrappedKey');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::ExportKeyOutput

=head1 ATTRIBUTES


=head2 WrappedKey => L<Paws::PaymentCryptography::WrappedKey>

The key material under export as a TR-34 WrappedKeyBlock or a TR-31
WrappedKeyBlock. or a RSA WrappedKeyCryptogram.


=head2 _request_id => Str


=cut

1;

package Paws::PaymentCryptography::GetAliasOutput;
  use Moose;
  has Alias => (is => 'ro', isa => 'Paws::PaymentCryptography::Alias', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::GetAliasOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Alias => L<Paws::PaymentCryptography::Alias>

The alias of the Amazon Web Services Payment Cryptography key.


=head2 _request_id => Str


=cut

1;
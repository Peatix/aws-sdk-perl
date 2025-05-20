
package Paws::PaymentCryptography::CreateAliasOutput;
  use Moose;
  has Alias => (is => 'ro', isa => 'Paws::PaymentCryptography::Alias', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::CreateAliasOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Alias => L<Paws::PaymentCryptography::Alias>

The alias for the key.


=head2 _request_id => Str


=cut

1;
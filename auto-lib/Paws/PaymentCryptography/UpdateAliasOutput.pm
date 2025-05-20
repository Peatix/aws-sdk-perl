
package Paws::PaymentCryptography::UpdateAliasOutput;
  use Moose;
  has Alias => (is => 'ro', isa => 'Paws::PaymentCryptography::Alias', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::UpdateAliasOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Alias => L<Paws::PaymentCryptography::Alias>

The alias name.


=head2 _request_id => Str


=cut

1;
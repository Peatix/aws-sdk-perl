
package Paws::EMR::DescribePersistentAppUIOutput;
  use Moose;
  has PersistentAppUI => (is => 'ro', isa => 'Paws::EMR::PersistentAppUI');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::DescribePersistentAppUIOutput

=head1 ATTRIBUTES


=head2 PersistentAppUI => L<Paws::EMR::PersistentAppUI>

The persistent application user interface.


=head2 _request_id => Str


=cut

1;
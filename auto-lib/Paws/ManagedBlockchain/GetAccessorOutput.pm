
package Paws::ManagedBlockchain::GetAccessorOutput;
  use Moose;
  has Accessor => (is => 'ro', isa => 'Paws::ManagedBlockchain::Accessor');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::GetAccessorOutput

=head1 ATTRIBUTES


=head2 Accessor => L<Paws::ManagedBlockchain::Accessor>

The properties of the accessor.


=head2 _request_id => Str


=cut


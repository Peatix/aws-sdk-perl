
package Paws::WellArchitected::GetLensOutput;
  use Moose;
  has Lens => (is => 'ro', isa => 'Paws::WellArchitected::Lens');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetLensOutput

=head1 ATTRIBUTES


=head2 Lens => L<Paws::WellArchitected::Lens>

A lens return object.


=head2 _request_id => Str


=cut



package Paws::WellArchitected::UpdateProfileOutput;
  use Moose;
  has Profile => (is => 'ro', isa => 'Paws::WellArchitected::Profile');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::UpdateProfileOutput

=head1 ATTRIBUTES


=head2 Profile => L<Paws::WellArchitected::Profile>

The profile.


=head2 _request_id => Str


=cut


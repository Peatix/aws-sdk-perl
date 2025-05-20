
package Paws::DMS::DeleteInstanceProfileResponse;
  use Moose;
  has InstanceProfile => (is => 'ro', isa => 'Paws::DMS::InstanceProfile');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DeleteInstanceProfileResponse

=head1 ATTRIBUTES


=head2 InstanceProfile => L<Paws::DMS::InstanceProfile>

The instance profile that was deleted.


=head2 _request_id => Str


=cut

1;
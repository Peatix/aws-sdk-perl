
package Paws::DMS::CreateInstanceProfileResponse;
  use Moose;
  has InstanceProfile => (is => 'ro', isa => 'Paws::DMS::InstanceProfile');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateInstanceProfileResponse

=head1 ATTRIBUTES


=head2 InstanceProfile => L<Paws::DMS::InstanceProfile>

The instance profile that was created.


=head2 _request_id => Str


=cut

1;
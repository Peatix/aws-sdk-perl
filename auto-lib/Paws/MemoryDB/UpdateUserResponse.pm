
package Paws::MemoryDB::UpdateUserResponse;
  use Moose;
  has User => (is => 'ro', isa => 'Paws::MemoryDB::User');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::UpdateUserResponse

=head1 ATTRIBUTES


=head2 User => L<Paws::MemoryDB::User>

The updated user


=head2 _request_id => Str


=cut

1;
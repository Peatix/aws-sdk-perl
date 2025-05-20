
package Paws::MemoryDB::DeleteACLResponse;
  use Moose;
  has ACL => (is => 'ro', isa => 'Paws::MemoryDB::ACL');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DeleteACLResponse

=head1 ATTRIBUTES


=head2 ACL => L<Paws::MemoryDB::ACL>

The Access Control List object that has been deleted.


=head2 _request_id => Str


=cut

1;

package Paws::MemoryDB::CreateACLResponse;
  use Moose;
  has ACL => (is => 'ro', isa => 'Paws::MemoryDB::ACL');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::CreateACLResponse

=head1 ATTRIBUTES


=head2 ACL => L<Paws::MemoryDB::ACL>

The newly-created Access Control List.


=head2 _request_id => Str


=cut

1;
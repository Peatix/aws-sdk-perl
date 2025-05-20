
package Paws::MemoryDB::UpdateACLResponse;
  use Moose;
  has ACL => (is => 'ro', isa => 'Paws::MemoryDB::ACL');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::UpdateACLResponse

=head1 ATTRIBUTES


=head2 ACL => L<Paws::MemoryDB::ACL>

The updated Access Control List.


=head2 _request_id => Str


=cut

1;
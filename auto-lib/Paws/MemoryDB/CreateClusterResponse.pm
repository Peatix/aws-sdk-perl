
package Paws::MemoryDB::CreateClusterResponse;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Paws::MemoryDB::Cluster');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::CreateClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => L<Paws::MemoryDB::Cluster>

The newly-created cluster.


=head2 _request_id => Str


=cut

1;
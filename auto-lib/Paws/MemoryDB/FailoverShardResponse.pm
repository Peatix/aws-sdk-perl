
package Paws::MemoryDB::FailoverShardResponse;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Paws::MemoryDB::Cluster');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::FailoverShardResponse

=head1 ATTRIBUTES


=head2 Cluster => L<Paws::MemoryDB::Cluster>

The cluster being failed over.


=head2 _request_id => Str


=cut

1;
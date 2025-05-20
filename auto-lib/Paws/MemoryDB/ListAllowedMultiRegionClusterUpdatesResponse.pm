
package Paws::MemoryDB::ListAllowedMultiRegionClusterUpdatesResponse;
  use Moose;
  has ScaleDownNodeTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ScaleUpNodeTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::ListAllowedMultiRegionClusterUpdatesResponse

=head1 ATTRIBUTES


=head2 ScaleDownNodeTypes => ArrayRef[Str|Undef]

The node types that the cluster can be scaled down to.


=head2 ScaleUpNodeTypes => ArrayRef[Str|Undef]

The node types that the cluster can be scaled up to.


=head2 _request_id => Str


=cut

1;
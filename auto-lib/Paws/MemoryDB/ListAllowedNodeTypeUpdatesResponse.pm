
package Paws::MemoryDB::ListAllowedNodeTypeUpdatesResponse;
  use Moose;
  has ScaleDownNodeTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ScaleUpNodeTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::ListAllowedNodeTypeUpdatesResponse

=head1 ATTRIBUTES


=head2 ScaleDownNodeTypes => ArrayRef[Str|Undef]

A list node types which you can use to scale down your cluster.


=head2 ScaleUpNodeTypes => ArrayRef[Str|Undef]

A list node types which you can use to scale up your cluster.


=head2 _request_id => Str


=cut

1;
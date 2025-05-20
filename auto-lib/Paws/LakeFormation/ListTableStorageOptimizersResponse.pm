
package Paws::LakeFormation::ListTableStorageOptimizersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StorageOptimizerList => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::StorageOptimizer]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListTableStorageOptimizersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token for paginating the returned list of tokens,
returned if the current segment of the list is not the last.


=head2 StorageOptimizerList => ArrayRef[L<Paws::LakeFormation::StorageOptimizer>]

A list of the storage optimizers associated with a table.


=head2 _request_id => Str


=cut


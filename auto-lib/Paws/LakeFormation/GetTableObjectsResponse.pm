
package Paws::LakeFormation::GetTableObjectsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Objects => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::PartitionObjects]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetTableObjectsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token indicating whether additional data is available.


=head2 Objects => ArrayRef[L<Paws::LakeFormation::PartitionObjects>]

A list of objects organized by partition keys.


=head2 _request_id => Str


=cut


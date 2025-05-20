
package Paws::LakeFormation::ListLakeFormationOptInsResponse;
  use Moose;
  has LakeFormationOptInsInfoList => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::LakeFormationOptInsInfo]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListLakeFormationOptInsResponse

=head1 ATTRIBUTES


=head2 LakeFormationOptInsInfoList => ArrayRef[L<Paws::LakeFormation::LakeFormationOptInsInfo>]

A list of principal-resource pairs that have Lake Formation permissins
enforced.


=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve this
list.


=head2 _request_id => Str


=cut


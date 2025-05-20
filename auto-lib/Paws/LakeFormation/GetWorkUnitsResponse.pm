
package Paws::LakeFormation::GetWorkUnitsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has QueryId => (is => 'ro', isa => 'Str', required => 1);
  has WorkUnitRanges => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::WorkUnitRange]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetWorkUnitsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token for paginating the returned list of tokens,
returned if the current segment of the list is not the last.


=head2 B<REQUIRED> QueryId => Str

The ID of the plan query operation.


=head2 B<REQUIRED> WorkUnitRanges => ArrayRef[L<Paws::LakeFormation::WorkUnitRange>]

A C<WorkUnitRangeList> object that specifies the valid range of work
unit IDs for querying the execution service.


=head2 _request_id => Str


=cut



package Paws::LakeFormation::ListDataCellsFilterResponse;
  use Moose;
  has DataCellsFilters => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::DataCellsFilter]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListDataCellsFilterResponse

=head1 ATTRIBUTES


=head2 DataCellsFilters => ArrayRef[L<Paws::LakeFormation::DataCellsFilter>]

A list of C<DataCellFilter> structures.


=head2 NextToken => Str

A continuation token, if not all requested data cell filters have been
returned.


=head2 _request_id => Str


=cut


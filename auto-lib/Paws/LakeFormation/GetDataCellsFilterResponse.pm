
package Paws::LakeFormation::GetDataCellsFilterResponse;
  use Moose;
  has DataCellsFilter => (is => 'ro', isa => 'Paws::LakeFormation::DataCellsFilter');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetDataCellsFilterResponse

=head1 ATTRIBUTES


=head2 DataCellsFilter => L<Paws::LakeFormation::DataCellsFilter>

A structure that describes certain columns on certain rows.


=head2 _request_id => Str


=cut


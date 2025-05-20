
package Paws::LakeFormation::UpdateDataCellsFilter;
  use Moose;
  has TableData => (is => 'ro', isa => 'Paws::LakeFormation::DataCellsFilter', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataCellsFilter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateDataCellsFilter');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::UpdateDataCellsFilterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::UpdateDataCellsFilter - Arguments for method UpdateDataCellsFilter on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataCellsFilter on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method UpdateDataCellsFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataCellsFilter.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $UpdateDataCellsFilterResponse = $lakeformation->UpdateDataCellsFilter(
      TableData => {
        DatabaseName   => 'MyNameString',         # min: 1, max: 255
        Name           => 'MyNameString',         # min: 1, max: 255
        TableCatalogId => 'MyCatalogIdString',    # min: 1, max: 255
        TableName      => 'MyNameString',         # min: 1, max: 255
        ColumnNames    => [
          'MyNameString', ...                     # min: 1, max: 255
        ],    # OPTIONAL
        ColumnWildcard => {
          ExcludedColumnNames => [
            'MyNameString', ...    # min: 1, max: 255
          ],    # OPTIONAL
        },    # OPTIONAL
        RowFilter => {
          AllRowsWildcard => {

          },    # OPTIONAL
          FilterExpression => 'MyPredicateString',    # max: 2048; OPTIONAL
        },    # OPTIONAL
        VersionId => 'MyVersionString',    # min: 1, max: 255; OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/UpdateDataCellsFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TableData => L<Paws::LakeFormation::DataCellsFilter>

A C<DataCellsFilter> structure containing information about the data
cells filter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataCellsFilter in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::LakeFormation::CreateDataCellsFilter;
  use Moose;
  has TableData => (is => 'ro', isa => 'Paws::LakeFormation::DataCellsFilter', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataCellsFilter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateDataCellsFilter');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::CreateDataCellsFilterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::CreateDataCellsFilter - Arguments for method CreateDataCellsFilter on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataCellsFilter on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method CreateDataCellsFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataCellsFilter.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $CreateDataCellsFilterResponse = $lakeformation->CreateDataCellsFilter(
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/CreateDataCellsFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TableData => L<Paws::LakeFormation::DataCellsFilter>

A C<DataCellsFilter> structure containing information about the data
cells filter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataCellsFilter in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


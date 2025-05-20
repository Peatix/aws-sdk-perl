
package Paws::LakeFormation::GetDataCellsFilter;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has TableCatalogId => (is => 'ro', isa => 'Str', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataCellsFilter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetDataCellsFilter');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::GetDataCellsFilterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetDataCellsFilter - Arguments for method GetDataCellsFilter on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataCellsFilter on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method GetDataCellsFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataCellsFilter.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $GetDataCellsFilterResponse = $lakeformation->GetDataCellsFilter(
      DatabaseName   => 'MyNameString',
      Name           => 'MyNameString',
      TableCatalogId => 'MyCatalogIdString',
      TableName      => 'MyNameString',

    );

    # Results:
    my $DataCellsFilter = $GetDataCellsFilterResponse->DataCellsFilter;

    # Returns a L<Paws::LakeFormation::GetDataCellsFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/GetDataCellsFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseName => Str

A database in the Glue Data Catalog.



=head2 B<REQUIRED> Name => Str

The name given by the user to the data filter cell.



=head2 B<REQUIRED> TableCatalogId => Str

The ID of the catalog to which the table belongs.



=head2 B<REQUIRED> TableName => Str

A table in the database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataCellsFilter in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


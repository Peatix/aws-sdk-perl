
package Paws::LakeFormation::ListDataCellsFilter;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Table => (is => 'ro', isa => 'Paws::LakeFormation::TableResource');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataCellsFilter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListDataCellsFilter');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::ListDataCellsFilterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListDataCellsFilter - Arguments for method ListDataCellsFilter on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataCellsFilter on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method ListDataCellsFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataCellsFilter.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $ListDataCellsFilterResponse = $lakeformation->ListDataCellsFilter(
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
      Table      => {
        DatabaseName  => 'MyNameString',         # min: 1, max: 255
        CatalogId     => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
        Name          => 'MyNameString',         # min: 1, max: 255
        TableWildcard => {

        },                                       # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DataCellsFilters = $ListDataCellsFilterResponse->DataCellsFilters;
    my $NextToken        = $ListDataCellsFilterResponse->NextToken;

    # Returns a L<Paws::LakeFormation::ListDataCellsFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/ListDataCellsFilter>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum size of the response.



=head2 NextToken => Str

A continuation token, if this is a continuation call.



=head2 Table => L<Paws::LakeFormation::TableResource>

A table in the Glue Data Catalog.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataCellsFilter in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


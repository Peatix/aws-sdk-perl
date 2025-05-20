
package Paws::LakeFormation::CreateLakeFormationOptIn;
  use Moose;
  has Condition => (is => 'ro', isa => 'Paws::LakeFormation::Condition');
  has Principal => (is => 'ro', isa => 'Paws::LakeFormation::DataLakePrincipal', required => 1);
  has Resource => (is => 'ro', isa => 'Paws::LakeFormation::Resource', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLakeFormationOptIn');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateLakeFormationOptIn');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::CreateLakeFormationOptInResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::CreateLakeFormationOptIn - Arguments for method CreateLakeFormationOptIn on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLakeFormationOptIn on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method CreateLakeFormationOptIn.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLakeFormationOptIn.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $CreateLakeFormationOptInResponse =
      $lakeformation->CreateLakeFormationOptIn(
      Principal => {
        DataLakePrincipalIdentifier =>
          'MyDataLakePrincipalString',    # min: 1, max: 255; OPTIONAL
      },
      Resource => {
        Catalog => {
          Id => 'MyCatalogIdString',      # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        DataCellsFilter => {
          DatabaseName   => 'MyNameString',         # min: 1, max: 255; OPTIONAL
          Name           => 'MyNameString',         # min: 1, max: 255; OPTIONAL
          TableCatalogId => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
          TableName      => 'MyNameString',         # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        DataLocation => {
          ResourceArn => 'MyResourceArnString',
          CatalogId   => 'MyCatalogIdString',     # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        Database => {
          Name      => 'MyNameString',         # min: 1, max: 255; OPTIONAL
          CatalogId => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        LFTag => {
          TagKey    => 'MyNameString',    # min: 1, max: 255; OPTIONAL
          TagValues => [
            'MyLFTagValue', ...           # max: 256
          ],    # min: 1, max: 50
          CatalogId => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        LFTagExpression => {
          Name      => 'MyNameString',         # min: 1, max: 255; OPTIONAL
          CatalogId => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        LFTagPolicy => {
          ResourceType => 'DATABASE',             # values: DATABASE, TABLE
          CatalogId    => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
          Expression   => [
            {
              TagKey    => 'MyLFTagKey',          # min: 1, max: 128
              TagValues => [
                'MyLFTagValue', ...               # max: 256
              ],    # min: 1, max: 50

            },
            ...
          ],    # OPTIONAL
          ExpressionName => 'MyNameString',    # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        Table => {
          DatabaseName  => 'MyNameString',         # min: 1, max: 255; OPTIONAL
          CatalogId     => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
          Name          => 'MyNameString',         # min: 1, max: 255; OPTIONAL
          TableWildcard => {

          },                                       # OPTIONAL
        },    # OPTIONAL
        TableWithColumns => {
          DatabaseName => 'MyNameString',         # min: 1, max: 255; OPTIONAL
          Name         => 'MyNameString',         # min: 1, max: 255; OPTIONAL
          CatalogId    => 'MyCatalogIdString',    # min: 1, max: 255; OPTIONAL
          ColumnNames  => [
            'MyNameString', ...                   # min: 1, max: 255; OPTIONAL
          ],    # OPTIONAL
          ColumnWildcard => {
            ExcludedColumnNames => [
              'MyNameString', ...    # min: 1, max: 255; OPTIONAL
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      Condition => {
        Expression => 'MyExpressionString',    # max: 3000; OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/CreateLakeFormationOptIn>

=head1 ATTRIBUTES


=head2 Condition => L<Paws::LakeFormation::Condition>





=head2 B<REQUIRED> Principal => L<Paws::LakeFormation::DataLakePrincipal>





=head2 B<REQUIRED> Resource => L<Paws::LakeFormation::Resource>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLakeFormationOptIn in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


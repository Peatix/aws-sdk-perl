
package Paws::Glue::UpdateCatalog;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str', required => 1);
  has CatalogInput => (is => 'ro', isa => 'Paws::Glue::CatalogInput', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCatalog');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateCatalogResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateCatalog - Arguments for method UpdateCatalog on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCatalog on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateCatalog.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCatalog.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateCatalogResponse = $glue->UpdateCatalog(
      CatalogId    => 'MyCatalogIdString',
      CatalogInput => {
        AllowFullTableExternalDataAccess =>
          'True',    # values: True, False; OPTIONAL
        CatalogProperties => {
          CustomProperties => {
            'MyKeyString' => 'MyParametersMapValue'
            ,        # key: min: 1, max: 255, value: max: 512000
          },    # OPTIONAL
          DataLakeAccessProperties => {
            CatalogType      => 'MyNameString',    # min: 1, max: 255; OPTIONAL
            DataLakeAccess   => 1,                 # OPTIONAL
            DataTransferRole => 'MyIAMRoleArn',    # OPTIONAL
            KmsKey           => 'MyResourceArnString',    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        CreateDatabaseDefaultPermissions => [
          {
            Permissions => [
              'ALL',
              ... # values: ALL, SELECT, ALTER, DROP, DELETE, INSERT, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
            ],    # OPTIONAL
            Principal => {
              DataLakePrincipalIdentifier =>
                'MyDataLakePrincipalString',    # min: 1, max: 255; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        CreateTableDefaultPermissions => [
          {
            Permissions => [
              'ALL',
              ... # values: ALL, SELECT, ALTER, DROP, DELETE, INSERT, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
            ],    # OPTIONAL
            Principal => {
              DataLakePrincipalIdentifier =>
                'MyDataLakePrincipalString',    # min: 1, max: 255; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Description      => 'MyDescriptionString',    # max: 2048; OPTIONAL
        FederatedCatalog => {
          ConnectionName => 'MyNameString',    # min: 1, max: 255; OPTIONAL
          Identifier => 'MyFederationIdentifier',   # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        Parameters => {
          'MyKeyString' =>
            'MyParametersMapValue',  # key: min: 1, max: 255, value: max: 512000
        },    # OPTIONAL
        TargetRedshiftCatalog => {
          CatalogArn => 'MyResourceArnString',    # OPTIONAL

        },    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateCatalog>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CatalogId => Str

The ID of the catalog.



=head2 B<REQUIRED> CatalogInput => L<Paws::Glue::CatalogInput>

A C<CatalogInput> object specifying the new properties of an existing
catalog.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCatalog in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


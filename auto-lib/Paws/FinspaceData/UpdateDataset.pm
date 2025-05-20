
package Paws::FinspaceData::UpdateDataset;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alias');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DatasetDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetDescription');
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetId', required => 1);
  has DatasetTitle => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetTitle', required => 1);
  has Kind => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kind', required => 1);
  has SchemaDefinition => (is => 'ro', isa => 'Paws::FinspaceData::SchemaUnion', traits => ['NameInRequest'], request_name => 'schemaDefinition');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasetsv2/{datasetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::UpdateDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::UpdateDataset - Arguments for method UpdateDataset on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataset on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method UpdateDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataset.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $UpdateDatasetResponse = $finspace -api->UpdateDataset(
      DatasetId          => 'MyDatasetId',
      DatasetTitle       => 'MyDatasetTitle',
      Kind               => 'TABULAR',
      Alias              => 'MyAliasString',           # OPTIONAL
      ClientToken        => 'MyClientToken',           # OPTIONAL
      DatasetDescription => 'MyDatasetDescription',    # OPTIONAL
      SchemaDefinition   => {
        TabularSchemaConfig => {
          Columns => [
            {
              ColumnDescription => 'MyColumnDescription',   # max: 512; OPTIONAL
              ColumnName        => 'MyColumnName',          # max: 126; OPTIONAL
              DataType          => 'STRING'
              , # values: STRING, CHAR, INTEGER, TINYINT, SMALLINT, BIGINT, FLOAT, DOUBLE, DATE, DATETIME, BOOLEAN, BINARY; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          PrimaryKeyColumns => [
            'MyColumnName', ...    # max: 126; OPTIONAL
          ],    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DatasetId = $UpdateDatasetResponse->DatasetId;

    # Returns a L<Paws::FinspaceData::UpdateDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/UpdateDataset>

=head1 ATTRIBUTES


=head2 Alias => Str

The unique resource identifier for a Dataset.



=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 DatasetDescription => Str

A description for the Dataset.



=head2 B<REQUIRED> DatasetId => Str

The unique identifier for the Dataset to update.



=head2 B<REQUIRED> DatasetTitle => Str

A display title for the Dataset.



=head2 B<REQUIRED> Kind => Str

The format in which the Dataset data is structured.

=over

=item *

C<TABULAR> E<ndash> Data is structured in a tabular format.

=item *

C<NON_TABULAR> E<ndash> Data is structured in a non-tabular format.

=back


Valid values are: C<"TABULAR">, C<"NON_TABULAR">

=head2 SchemaDefinition => L<Paws::FinspaceData::SchemaUnion>

Definition for a schema on a tabular Dataset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataset in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


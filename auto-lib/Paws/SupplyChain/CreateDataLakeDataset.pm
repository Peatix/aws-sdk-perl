
package Paws::SupplyChain::CreateDataLakeDataset;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'namespace', required => 1);
  has PartitionSpec => (is => 'ro', isa => 'Paws::SupplyChain::DataLakeDatasetPartitionSpec', traits => ['NameInRequest'], request_name => 'partitionSpec');
  has Schema => (is => 'ro', isa => 'Paws::SupplyChain::DataLakeDatasetSchema', traits => ['NameInRequest'], request_name => 'schema');
  has Tags => (is => 'ro', isa => 'Paws::SupplyChain::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataLakeDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::CreateDataLakeDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::CreateDataLakeDataset - Arguments for method CreateDataLakeDataset on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataLakeDataset on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method CreateDataLakeDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataLakeDataset.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $CreateDataLakeDatasetResponse = $scn->CreateDataLakeDataset(
      InstanceId    => 'MyUUID',
      Name          => 'MyDataLakeDatasetName',
      Namespace     => 'MyDataLakeNamespaceName',
      Description   => 'MyDataLakeDatasetDescription',    # OPTIONAL
      PartitionSpec => {
        Fields => [
          {
            Name      => 'MyDataLakeDatasetSchemaFieldName',  # min: 1, max: 100
            Transform => {
              Type => 'YEAR',    # values: YEAR, MONTH, DAY, HOUR, IDENTITY

            },

          },
          ...
        ],    # min: 1, max: 10

      },    # OPTIONAL
      Schema => {
        Fields => [
          {
            IsRequired => 1,
            Name       => 'MyDataLakeDatasetSchemaFieldName', # min: 1, max: 100
            Type       => 'INT',  # values: INT, DOUBLE, STRING, TIMESTAMP, LONG

          },
          ...
        ],    # min: 1, max: 500
        Name        => 'MyDataLakeDatasetSchemaName',    # min: 1, max: 100
        PrimaryKeys => [
          {
            Name => 'MyDataLakeDatasetSchemaFieldName',    # min: 1, max: 100

          },
          ...
        ],    # min: 1, max: 20; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Dataset = $CreateDataLakeDatasetResponse->Dataset;

    # Returns a L<Paws::SupplyChain::CreateDataLakeDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/CreateDataLakeDataset>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the dataset.



=head2 B<REQUIRED> InstanceId => Str

The Amazon Web Services Supply Chain instance identifier.



=head2 B<REQUIRED> Name => Str

The name of the dataset. For B<asc> name space, the name must be one of
the supported data entities under
https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html).



=head2 B<REQUIRED> Namespace => Str

The namespace of the dataset, besides the custom defined namespace,
every instance comes with below pre-defined namespaces:

=over

=item *

B<asc> - For information on the Amazon Web Services Supply Chain
supported datasets see
https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html).

=item *

B<default> - For datasets with custom user-defined schemas.

=back




=head2 PartitionSpec => L<Paws::SupplyChain::DataLakeDatasetPartitionSpec>

The partition specification of the dataset. Partitioning can
effectively improve the dataset query performance by reducing the
amount of data scanned during query execution. But partitioning or not
will affect how data get ingested by data ingestion methods, such as
SendDataIntegrationEvent's dataset UPSERT will upsert records within
partition (instead of within whole dataset). For more details, refer to
those data ingestion documentations.



=head2 Schema => L<Paws::SupplyChain::DataLakeDatasetSchema>

The custom schema of the data lake dataset and required for dataset in
B<default> and custom namespaces.



=head2 Tags => L<Paws::SupplyChain::TagMap>

The tags of the dataset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataLakeDataset in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


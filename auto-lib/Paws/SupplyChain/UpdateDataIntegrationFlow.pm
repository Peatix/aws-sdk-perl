
package Paws::SupplyChain::UpdateDataIntegrationFlow;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::SupplyChain::DataIntegrationFlowSource]', traits => ['NameInRequest'], request_name => 'sources');
  has Target => (is => 'ro', isa => 'Paws::SupplyChain::DataIntegrationFlowTarget', traits => ['NameInRequest'], request_name => 'target');
  has Transformation => (is => 'ro', isa => 'Paws::SupplyChain::DataIntegrationFlowTransformation', traits => ['NameInRequest'], request_name => 'transformation');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataIntegrationFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/data-integration/instance/{instanceId}/data-integration-flows/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::UpdateDataIntegrationFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::UpdateDataIntegrationFlow - Arguments for method UpdateDataIntegrationFlow on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataIntegrationFlow on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method UpdateDataIntegrationFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataIntegrationFlow.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $UpdateDataIntegrationFlowResponse = $scn->UpdateDataIntegrationFlow(
      InstanceId => 'MyUUID',
      Name       => 'MyDataIntegrationFlowName',
      Sources    => [
        {
          SourceName => 'MyDataIntegrationFlowSourceName', # min: 1, max: 256
          SourceType => 'S3',                              # values: S3, DATASET
          DatasetSource => {
            DatasetIdentifier => 'MyDatasetIdentifier',    # min: 1, max: 1011
            Options           => {
              DedupeRecords  => 1,                         # OPTIONAL
              DedupeStrategy => {
                Type          => 'FIELD_PRIORITY',    # values: FIELD_PRIORITY
                FieldPriority => {
                  Fields => [
                    {
                      Name =>
                        'MyDataIntegrationFlowFieldPriorityDedupeFieldName'
                      ,                      # min: 1, max: 100
                      SortOrder => 'ASC',    # values: ASC, DESC

                    },
                    ...
                  ],    # min: 1, max: 10

                },    # OPTIONAL
              },    # OPTIONAL
              LoadType =>
                'INCREMENTAL',    # values: INCREMENTAL, REPLACE; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          S3Source => {
            BucketName => 'MyS3BucketName',                   # min: 3, max: 63
            Prefix     => 'MyDataIntegrationFlowS3Prefix',    # max: 700
            Options    => {
              FileType => 'CSV',    # values: CSV, PARQUET, JSON; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Target => {
        TargetType    => 'S3',    # values: S3, DATASET
        DatasetTarget => {
          DatasetIdentifier => 'MyDatasetIdentifier',    # min: 1, max: 1011
          Options           => {
            DedupeRecords  => 1,                         # OPTIONAL
            DedupeStrategy => {
              Type          => 'FIELD_PRIORITY',    # values: FIELD_PRIORITY
              FieldPriority => {
                Fields => [
                  {
                    Name => 'MyDataIntegrationFlowFieldPriorityDedupeFieldName'
                    ,                      # min: 1, max: 100
                    SortOrder => 'ASC',    # values: ASC, DESC

                  },
                  ...
                ],    # min: 1, max: 10

              },    # OPTIONAL
            },    # OPTIONAL
            LoadType => 'INCREMENTAL',  # values: INCREMENTAL, REPLACE; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        S3Target => {
          BucketName => 'MyS3BucketName',                   # min: 3, max: 63
          Prefix     => 'MyDataIntegrationFlowS3Prefix',    # max: 700
          Options    => {
            FileType => 'CSV',    # values: CSV, PARQUET, JSON; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Transformation => {
        TransformationType => 'SQL',    # values: SQL, NONE
        SqlTransformation  => {
          Query => 'MyDataIntegrationFlowSQLQuery',    # min: 1, max: 65535

        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Flow = $UpdateDataIntegrationFlowResponse->Flow;

    # Returns a L<Paws::SupplyChain::UpdateDataIntegrationFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/UpdateDataIntegrationFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The Amazon Web Services Supply Chain instance identifier.



=head2 B<REQUIRED> Name => Str

The name of the DataIntegrationFlow to be updated.



=head2 Sources => ArrayRef[L<Paws::SupplyChain::DataIntegrationFlowSource>]

The new source configurations for the DataIntegrationFlow.



=head2 Target => L<Paws::SupplyChain::DataIntegrationFlowTarget>

The new target configurations for the DataIntegrationFlow.



=head2 Transformation => L<Paws::SupplyChain::DataIntegrationFlowTransformation>

The new transformation configurations for the DataIntegrationFlow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataIntegrationFlow in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


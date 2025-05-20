
package Paws::IoTSiteWise::CreateDataset;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DatasetDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetDescription');
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetId');
  has DatasetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetName', required => 1);
  has DatasetSource => (is => 'ro', isa => 'Paws::IoTSiteWise::DatasetSource', traits => ['NameInRequest'], request_name => 'datasetSource', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IoTSiteWise::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::CreateDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateDataset - Arguments for method CreateDataset on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataset on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method CreateDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataset.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $CreateDatasetResponse = $iotsitewise->CreateDataset(
      DatasetName   => 'MyRestrictedName',
      DatasetSource => {
        SourceFormat => 'KNOWLEDGE_BASE',    # values: KNOWLEDGE_BASE
        SourceType   => 'KENDRA',            # values: KENDRA
        SourceDetail => {
          Kendra => {
            KnowledgeBaseArn => 'MyARN',    # min: 1, max: 1600
            RoleArn          => 'MyARN',    # min: 1, max: 1600

          },    # OPTIONAL
        },    # OPTIONAL
      },
      ClientToken        => 'MyClientToken',              # OPTIONAL
      DatasetDescription => 'MyRestrictedDescription',    # OPTIONAL
      DatasetId          => 'MyID',                       # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $DatasetArn    = $CreateDatasetResponse->DatasetArn;
    my $DatasetId     = $CreateDatasetResponse->DatasetId;
    my $DatasetStatus = $CreateDatasetResponse->DatasetStatus;

    # Returns a L<Paws::IoTSiteWise::CreateDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/CreateDataset>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 DatasetDescription => Str

A description about the dataset, and its functionality.



=head2 DatasetId => Str

The ID of the dataset.



=head2 B<REQUIRED> DatasetName => Str

The name of the dataset.



=head2 B<REQUIRED> DatasetSource => L<Paws::IoTSiteWise::DatasetSource>

The data source for the dataset.



=head2 Tags => L<Paws::IoTSiteWise::TagMap>

A list of key-value pairs that contain metadata for the access policy.
For more information, see Tagging your IoT SiteWise resources
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html)
in the I<IoT SiteWise User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataset in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


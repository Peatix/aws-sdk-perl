
package Paws::IoTTwinMaker::CreateMetadataTransferJob;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Destination => (is => 'ro', isa => 'Paws::IoTTwinMaker::DestinationConfiguration', traits => ['NameInRequest'], request_name => 'destination', required => 1);
  has MetadataTransferJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metadataTransferJobId');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::SourceConfiguration]', traits => ['NameInRequest'], request_name => 'sources', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMetadataTransferJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metadata-transfer-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::CreateMetadataTransferJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::CreateMetadataTransferJob - Arguments for method CreateMetadataTransferJob on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMetadataTransferJob on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method CreateMetadataTransferJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMetadataTransferJob.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $CreateMetadataTransferJobResponse =
      $iottwinmaker->CreateMetadataTransferJob(
      Destination => {
        Type => 's3',    # values: s3, iotsitewise, iottwinmaker
        IotTwinMakerConfiguration => {
          Workspace => 'MyTwinMakerArn',    # min: 20, max: 2048

        },    # OPTIONAL
        S3Configuration => {
          Location => 'MyS3DestinationLocation',

        },    # OPTIONAL
      },
      Sources => [
        {
          Type => 's3',    # values: s3, iotsitewise, iottwinmaker
          IotSiteWiseConfiguration => {
            Filters => [
              {
                FilterByAsset => {
                  AssetExternalId =>
                    'MySiteWiseExternalId',    # min: 2, max: 128; OPTIONAL
                  AssetId           => 'MyUuid',    # min: 36, max: 36; OPTIONAL
                  IncludeAssetModel => 1,           # OPTIONAL
                  IncludeOffspring  => 1,           # OPTIONAL
                },    # OPTIONAL
                FilterByAssetModel => {
                  AssetModelExternalId =>
                    'MySiteWiseExternalId',    # min: 2, max: 128; OPTIONAL
                  AssetModelId     => 'MyUuid',    # min: 36, max: 36; OPTIONAL
                  IncludeAssets    => 1,           # OPTIONAL
                  IncludeOffspring => 1,           # OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          IotTwinMakerConfiguration => {
            Workspace => 'MyTwinMakerArn',    # min: 20, max: 2048
            Filters   => [
              {
                FilterByComponentType => {
                  ComponentTypeId => 'MyComponentTypeId',    # min: 1, max: 256

                },    # OPTIONAL
                FilterByEntity => {
                  EntityId => 'MyEntityId',    # min: 1, max: 128

                },    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          S3Configuration => {
            Location => 'MyS3SourceLocation',

          },    # OPTIONAL
        },
        ...
      ],
      Description           => 'MyDescription',    # OPTIONAL
      MetadataTransferJobId => 'MyId',             # OPTIONAL
      );

    # Results:
    my $Arn              = $CreateMetadataTransferJobResponse->Arn;
    my $CreationDateTime = $CreateMetadataTransferJobResponse->CreationDateTime;
    my $MetadataTransferJobId =
      $CreateMetadataTransferJobResponse->MetadataTransferJobId;
    my $Status = $CreateMetadataTransferJobResponse->Status;

    # Returns a L<Paws::IoTTwinMaker::CreateMetadataTransferJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/CreateMetadataTransferJob>

=head1 ATTRIBUTES


=head2 Description => Str

The metadata transfer job description.



=head2 B<REQUIRED> Destination => L<Paws::IoTTwinMaker::DestinationConfiguration>

The metadata transfer job destination.



=head2 MetadataTransferJobId => Str

The metadata transfer job Id.



=head2 B<REQUIRED> Sources => ArrayRef[L<Paws::IoTTwinMaker::SourceConfiguration>]

The metadata transfer job sources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMetadataTransferJob in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


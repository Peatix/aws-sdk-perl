
package Paws::MediaPackageV2::CreateHarvestJob;
  use Moose;
  has ChannelGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelGroupName', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelName', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-client-token');
  has Description => (is => 'ro', isa => 'Str');
  has Destination => (is => 'ro', isa => 'Paws::MediaPackageV2::Destination', required => 1);
  has HarvestedManifests => (is => 'ro', isa => 'Paws::MediaPackageV2::HarvestedManifests', required => 1);
  has HarvestJobName => (is => 'ro', isa => 'Str');
  has OriginEndpointName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OriginEndpointName', required => 1);
  has ScheduleConfiguration => (is => 'ro', isa => 'Paws::MediaPackageV2::HarvesterScheduleConfiguration', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MediaPackageV2::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHarvestJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/harvestJob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageV2::CreateHarvestJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::CreateHarvestJob - Arguments for method CreateHarvestJob on L<Paws::MediaPackageV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHarvestJob on the
L<AWS Elemental MediaPackage v2|Paws::MediaPackageV2> service. Use the attributes of this class
as arguments to method CreateHarvestJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHarvestJob.

=head1 SYNOPSIS

    my $mediapackagev2 = Paws->service('MediaPackageV2');
    my $CreateHarvestJobResponse = $mediapackagev2->CreateHarvestJob(
      ChannelGroupName => 'MyResourceName',
      ChannelName      => 'MyResourceName',
      Destination      => {
        S3Destination => {
          BucketName      => 'MyS3BucketName',         # min: 3, max: 63
          DestinationPath => 'MyS3DestinationPath',    # min: 1, max: 1024

        },

      },
      HarvestedManifests => {
        DashManifests => [
          {
            ManifestName => 'MyResourceName',    # min: 1, max: 256

          },
          ...
        ],    # OPTIONAL
        HlsManifests => [
          {
            ManifestName => 'MyResourceName',    # min: 1, max: 256

          },
          ...
        ],    # OPTIONAL
        LowLatencyHlsManifests => [
          {
            ManifestName => 'MyResourceName',    # min: 1, max: 256

          },
          ...
        ],    # OPTIONAL
      },
      OriginEndpointName    => 'MyResourceName',
      ScheduleConfiguration => {
        EndTime   => '1970-01-01T01:00:00',
        StartTime => '1970-01-01T01:00:00',

      },
      ClientToken    => 'MyIdempotencyToken',               # OPTIONAL
      Description    => 'MyResourceDescription',            # OPTIONAL
      HarvestJobName => 'MyResourceName',                   # OPTIONAL
      Tags           => { 'MyTagKey' => 'MyTagValue', },    # OPTIONAL
    );

    # Results:
    my $Arn                = $CreateHarvestJobResponse->Arn;
    my $ChannelGroupName   = $CreateHarvestJobResponse->ChannelGroupName;
    my $ChannelName        = $CreateHarvestJobResponse->ChannelName;
    my $CreatedAt          = $CreateHarvestJobResponse->CreatedAt;
    my $Description        = $CreateHarvestJobResponse->Description;
    my $Destination        = $CreateHarvestJobResponse->Destination;
    my $ETag               = $CreateHarvestJobResponse->ETag;
    my $ErrorMessage       = $CreateHarvestJobResponse->ErrorMessage;
    my $HarvestJobName     = $CreateHarvestJobResponse->HarvestJobName;
    my $HarvestedManifests = $CreateHarvestJobResponse->HarvestedManifests;
    my $ModifiedAt         = $CreateHarvestJobResponse->ModifiedAt;
    my $OriginEndpointName = $CreateHarvestJobResponse->OriginEndpointName;
    my $ScheduleConfiguration =
      $CreateHarvestJobResponse->ScheduleConfiguration;
    my $Status = $CreateHarvestJobResponse->Status;
    my $Tags   = $CreateHarvestJobResponse->Tags;

    # Returns a L<Paws::MediaPackageV2::CreateHarvestJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackagev2/CreateHarvestJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelGroupName => Str

The name of the channel group containing the channel from which to
harvest content.



=head2 B<REQUIRED> ChannelName => Str

The name of the channel from which to harvest content.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 Description => Str

An optional description for the harvest job.



=head2 B<REQUIRED> Destination => L<Paws::MediaPackageV2::Destination>

The S3 destination where the harvested content will be placed.



=head2 B<REQUIRED> HarvestedManifests => L<Paws::MediaPackageV2::HarvestedManifests>

A list of manifests to be harvested.



=head2 HarvestJobName => Str

A name for the harvest job. This name must be unique within the
channel.



=head2 B<REQUIRED> OriginEndpointName => Str

The name of the origin endpoint from which to harvest content.



=head2 B<REQUIRED> ScheduleConfiguration => L<Paws::MediaPackageV2::HarvesterScheduleConfiguration>

The configuration for when the harvest job should run, including start
and end times.



=head2 Tags => L<Paws::MediaPackageV2::TagMap>

A collection of tags associated with the harvest job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHarvestJob in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


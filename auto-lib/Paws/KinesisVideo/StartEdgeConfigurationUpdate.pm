
package Paws::KinesisVideo::StartEdgeConfigurationUpdate;
  use Moose;
  has EdgeConfig => (is => 'ro', isa => 'Paws::KinesisVideo::EdgeConfig', required => 1);
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartEdgeConfigurationUpdate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/startEdgeConfigurationUpdate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::StartEdgeConfigurationUpdateOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::StartEdgeConfigurationUpdate - Arguments for method StartEdgeConfigurationUpdate on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartEdgeConfigurationUpdate on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method StartEdgeConfigurationUpdate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartEdgeConfigurationUpdate.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $StartEdgeConfigurationUpdateOutput =
      $kinesisvideo->StartEdgeConfigurationUpdate(
      EdgeConfig => {
        HubDeviceArn   => 'MyHubDeviceArn',    # min: 1, max: 1024
        RecorderConfig => {
          MediaSourceConfig => {
            MediaUriSecretArn => 'MyMediaUriSecretArn',    # min: 20, max: 2048
            MediaUriType      => 'RTSP_URI',    # values: RTSP_URI, FILE_URI

          },
          ScheduleConfig => {
            DurationInSeconds  => 1,                        # min: 60, max: 3600
            ScheduleExpression => 'MyScheduleExpression',   # min: 11, max: 100

          },    # OPTIONAL
        },
        DeletionConfig => {
          DeleteAfterUpload    => 1,    # OPTIONAL
          EdgeRetentionInHours => 1,    # min: 1, max: 720; OPTIONAL
          LocalSizeConfig      => {
            MaxLocalMediaSizeInMB => 1,    # min: 64, max: 2000000; OPTIONAL
            StrategyOnFullSize    => 'DELETE_OLDEST_MEDIA'
            ,    # values: DELETE_OLDEST_MEDIA, DENY_NEW_MEDIA; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        UploaderConfig => {
          ScheduleConfig => {
            DurationInSeconds  => 1,                        # min: 60, max: 3600
            ScheduleExpression => 'MyScheduleExpression',   # min: 11, max: 100

          },    # OPTIONAL

        },    # OPTIONAL
      },
      StreamARN  => 'MyResourceARN',    # OPTIONAL
      StreamName => 'MyStreamName',     # OPTIONAL
      );

    # Results:
    my $CreationTime = $StartEdgeConfigurationUpdateOutput->CreationTime;
    my $EdgeConfig   = $StartEdgeConfigurationUpdateOutput->EdgeConfig;
    my $FailedStatusDetails =
      $StartEdgeConfigurationUpdateOutput->FailedStatusDetails;
    my $LastUpdatedTime = $StartEdgeConfigurationUpdateOutput->LastUpdatedTime;
    my $StreamARN       = $StartEdgeConfigurationUpdateOutput->StreamARN;
    my $StreamName      = $StartEdgeConfigurationUpdateOutput->StreamName;
    my $SyncStatus      = $StartEdgeConfigurationUpdateOutput->SyncStatus;

   # Returns a L<Paws::KinesisVideo::StartEdgeConfigurationUpdateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/StartEdgeConfigurationUpdate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EdgeConfig => L<Paws::KinesisVideo::EdgeConfig>

The edge configuration details required to invoke the update process.



=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the stream. Specify either the
C<StreamName> or the C<StreamARN>.



=head2 StreamName => Str

The name of the stream whose edge configuration you want to update.
Specify either the C<StreamName> or the C<StreamARN>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartEdgeConfigurationUpdate in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

